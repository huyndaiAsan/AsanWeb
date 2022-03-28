package kr.re.aac.scadmin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.re.aac.admin.dto.BoardDto;
import kr.re.aac.admin.dto.FileDto;
import kr.re.aac.admin.dto.UploadFileVO;
import kr.re.aac.common.WebFileUtil;
import kr.re.aac.common.controller.commonPrivacyController;
import kr.re.aac.scadmin.dao.ScAdminBoardDao;
import kr.re.aac.scadmin.dao.ScAdminFileDao;
import kr.re.aac.util.Pager;

@Controller
@RequestMapping("/scadmin/board")
public class ScAdminBoardController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    private final static String UPLOAD_PATH = "brd/";
    
    @Autowired
    private ServletContext servletContext;
    
    @Resource(name = "scAdminBoardDao")
    private ScAdminBoardDao scBoardDao;

    @Resource(name = "scAdminFileDao")
    private ScAdminFileDao scFileDao;

    @RequestMapping("/{category}/list") 
    public String list(Model model
    		, @RequestParam Map param
    		, @RequestParam(defaultValue = "1") int pageNo
    		, @RequestParam(defaultValue = "10")int exposureCount
    		, @PathVariable String category
    	) {
    	
    	param.put("pageUnit", exposureCount);
    	param.put("pageNo", pageNo);
    	param.put("category", category);
    	//category : notice , news , reference , announce , recruit ,construct
        int totalCount = scBoardDao.selectTotalCount(param);
        Pager pager = new Pager(pageNo, totalCount, exposureCount);
        List<BoardDto> resultList = scBoardDao.selectList(param);
        model.addAttribute("pager", pager);
        model.addAttribute("resultList", resultList);
        if(category.equals("recruit")){
        	return "scadmin/view/recruit/list";
        }else if(category.equals("construct")){
        	return "scadmin/view/construct/list";
        }else{
        	return "scadmin/view/board/list";
        }
        
    }

    @RequestMapping("/{category}/write")
    public String write(@PathVariable String category) {
    	if(category.equals("recruit")){
        	return "scadmin/view/recruit/write";
        }else if(category.equals("construct")){
        	return "scadmin/view/construct/write";
        }else{
        	return "scadmin/view/board/write";
        }
    }

    @RequestMapping("/{category}/add")
    public @ResponseBody Map<String, String> add(BoardDto boardDto
    		, @RequestParam Map param
    		, @PathVariable String category
    		, @RequestParam(value = "attach", required = false) MultipartFile[] attach
    		, @RequestParam(value = "default_attach", required = false) MultipartFile default_attach
    		, HttpSession session) {
        boardDto.setCategory(category);
        param.put("category", category);
        HashMap admin = (HashMap) session.getAttribute("adminSession");
        UploadFileVO uploadfileVO = null;	
        Map<String, String> map = new HashMap<String, String>();
        System.out.println("------------------------------------------");
        try {
			
	        if (default_attach != null && !default_attach.isEmpty()) {
				uploadfileVO = WebFileUtil.upload(default_attach, UPLOAD_PATH);
				if (uploadfileVO != null) {
					boardDto.setDefaultImage(uploadfileVO.getUrl() );
				}
			}
	        scBoardDao.insert(boardDto);
	        for(int i = 0; i < attach.length; i++){
	    		if (attach[i] != null && !attach[i].isEmpty()) {
					uploadfileVO = WebFileUtil.upload(attach[i], UPLOAD_PATH);
					if (uploadfileVO != null) {
						HashMap fileParam = new HashMap();
						fileParam.put("origin_name", uploadfileVO.getFileNm());
						fileParam.put("save_path", uploadfileVO.getUrl());
						fileParam.put("size", uploadfileVO.getFileSize());
						fileParam.put("board_id", Integer.toString(boardDto.getId()) );
						fileParam.put("reg_user_id", admin.get("id").toString());
						scFileDao.fileInsert(fileParam);
					}
	    		}
	    	}
	        
	        map.put("result", "success");
        } catch (Exception e) {
        	map.put("result", "fail");
        	e.printStackTrace();
		}
        return map;
    }

    @RequestMapping("/{category}/read")
    public String read(Model model, int boardId, int pageNo, @PathVariable String category) {
        BoardDto result = scBoardDao.selectOne(boardId);
        List<FileDto> fileList = scFileDao.selectList(result.getId());

        model.addAttribute("result", result);
        model.addAttribute("fileList", fileList);
        
        if(category.equals("recruit")){
        	return "scadmin/view/recruit/write";
        }else if(category.equals("construct")){
        	return "scadmin/view/construct/write";
        }else{
        	return "scadmin/view/board/write";
        }
        
    }

    @RequestMapping("/{category}/modify")
    public @ResponseBody Map<String, String> modify(
    			BoardDto boardDto, 
    			@PathVariable String category, 
    			Integer[] uploadFileIds, 
    			@RequestParam(value = "attach", required = false) MultipartFile[] attach,
    			@RequestParam(value = "default_attach", required = false) MultipartFile default_attach,
    			@RequestParam(value = "delId", required = false, defaultValue="") String delId,
    			HttpSession session,
    			HttpServletRequest request
    			, HttpServletResponse response
    	) {
    	HashMap admin = (HashMap) session.getAttribute("adminSession");
    	UploadFileVO uploadfileVO = null;			
    	try {
			for(int i = 0; i < attach.length; i++){
	    		if (attach[i] != null && !attach[i].isEmpty()) {
					uploadfileVO = WebFileUtil.upload(attach[i], UPLOAD_PATH);
					if (uploadfileVO != null) {
						HashMap fileParam = new HashMap();
						fileParam.put("origin_name", uploadfileVO.getFileNm());
						fileParam.put("save_path", uploadfileVO.getUrl());
						fileParam.put("size", uploadfileVO.getFileSize());
						fileParam.put("board_id", boardDto.getId());
						fileParam.put("reg_user_id", admin.get("id").toString());
						scFileDao.fileInsert(fileParam);
					}
	    		}
	    	}
    	} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	if (default_attach != null && !default_attach.isEmpty()) {
			uploadfileVO = WebFileUtil.upload(default_attach, UPLOAD_PATH);
			if (uploadfileVO != null) {
				boardDto.setDefaultImage(uploadfileVO.getUrl() );
			}
		}
    	
        scBoardDao.update(boardDto);
        
        try {
        	if(!delId.equals("") || delId.indexOf(",") > 0){
	        	String[] delSeqArr = delId.split(",");
	            for (int i = 0; i < delSeqArr.length; i++) {
	            	scFileDao.fileDelete(delSeqArr[i]);
	            }
        	}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        Map<String, String> map = new HashMap<String, String>();
        map.put("result", "success");

        return map;
    }

    @RequestMapping("/{category}/remove")
    public String remove(
    		Model model
    		, int boardId
    		, @PathVariable String category
    		, @RequestParam(defaultValue = "1") int pageNo
    		, HttpSession session) {
    	scBoardDao.delete(boardId);
        model.addAttribute("pageNo", pageNo);
        return "redirect:/scadmin/board/"+ category +"/list";
    }
}
