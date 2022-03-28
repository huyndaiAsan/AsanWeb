package kr.re.aac.main.controller;

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
import kr.re.aac.main.dao.BoardDao;
import kr.re.aac.main.dao.FileDao;
import kr.re.aac.util.Pager;

@Controller
@RequestMapping(value = {"/about", "/promotion", "/build"})
public class BoardController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    private final static String UPLOAD_PATH = "brd/";
    
    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    private commonPrivacyController commonprivacycontroller;
    
    @Resource(name = "boardDao")
    private BoardDao boardDao;

    @Resource(name = "fileDao")
    private FileDao fileDao;

    @RequestMapping("/{category}/list")
    public String list(Model model
    		, @RequestParam Map param
    		, @RequestParam(defaultValue = "1") int pageNo
    		, @RequestParam(defaultValue = "10") int exposureCount
    		, @RequestParam(defaultValue = "1") int gubun
    		, @PathVariable String category
    	) {
    	
    	if(category.equals("construct")){
    		exposureCount = 12;
    	}
    	
    	param.put("pageUnit", exposureCount);
    	param.put("pageNo", pageNo);
    	param.put("category", category);
    	param.put("gubun", gubun);
    	model.addAttribute("gubun", gubun);
    	//category : notice , news , reference , announce , recruit ,construct
    	// 공통영역 : notice , reference, announce
    	// 갤러리 : news, 
    	// 채용 : recruit, 
    	// 특수영역 : construct, 
        int totalCount = boardDao.selectTotalCount(param);
        Pager pager = new Pager(pageNo, totalCount, exposureCount);
        param.put("startRow", pager.getStartRow());
        param.put("endRow", pager.getEndRow());
        
        List<Map> resultList = boardDao.selectList(param);
        model.addAttribute("pager", pager);
        model.addAttribute("resultList", resultList);
        if(category.equals("recruit")){
        	List<Map> topMarkList = boardDao.selectTopMarkList(param);
        	model.addAttribute("topMarkList", topMarkList);
        	return "main/recruit/list";
        }else if(category.equals("news")){
        	return "main/news/list";
        }else if(category.equals("construct")){
        	return "main/construct/list";
        }else{
        	return "main/board/list";
        }
    }

    @RequestMapping("/{category}/read")
    public String read(@RequestParam Map param,
    		Model model
    		, int boardId
    		, int pageNo
    		, @RequestParam(defaultValue = "1") int gubun
    		, @PathVariable String category) {
    	param.put("category", category);
    	model.addAttribute("gubun", gubun);
        BoardDto result = boardDao.selectOne(boardId);
        List<FileDto> fileList = fileDao.selectList(result.getId());
        boardDao.updateIncreaseRead(result.getId());
        model.addAttribute("result", result);
        model.addAttribute("fileList", fileList);
        model.addAttribute("resultPre", boardDao.selectPreOne(result));
        model.addAttribute("resultNext", boardDao.selectNextOne(result));
        if(category.equals("recruit")){
        	return "main/recruit/write";
        }else if(category.equals("news")){
        	return "main/news/write";
        }else if(category.equals("construct")){
        	return "main/construct/write";
        }else{
        	return "main/board/write";
        }
    }

}
