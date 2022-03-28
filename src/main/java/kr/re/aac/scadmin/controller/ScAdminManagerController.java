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
import org.springframework.web.util.WebUtils;

import kr.re.aac.admin.dto.BoardDto;
import kr.re.aac.admin.dto.FileDto;
import kr.re.aac.admin.dto.UploadFileVO;
import kr.re.aac.common.ShaPasswordUtil;
import kr.re.aac.common.WebFileUtil;
import kr.re.aac.common.controller.commonPrivacyController;
import kr.re.aac.scadmin.dao.ScAdminFileDao;
import kr.re.aac.scadmin.dao.ScAdminLoginDao;
import kr.re.aac.scadmin.dao.ScAdminManagerDao;
import kr.re.aac.util.Pager;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/scadmin/manager")
public class ScAdminManagerController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    private final static String UPLOAD_PATH = "manager/";
    
    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    private commonPrivacyController commonprivacycontroller;
    
    @Resource(name = "scAdminManagerDao")
    private ScAdminManagerDao scManagerDao;

    @Autowired
    private ScAdminLoginDao loginDao;
    
    @RequestMapping("/read")
    public String read(Model model, HttpSession session,
			HttpServletRequest request
			, HttpServletResponse response) {
    	return "scadmin/view/manager/read";
    }

    @RequestMapping("/modify")
    public @ResponseBody Map<String, String> modify(
    			@RequestParam(value = "nPwd", required = true) String nPwd,
    			@RequestParam(value = "pwd", required = true) String pwd,
    			HttpSession session,
    			HttpServletRequest request
    			, HttpServletResponse response
    	) {
    	JSONObject json = new JSONObject();
    	HashMap admin = (HashMap) session.getAttribute("adminSession");
    	
    	ShaPasswordUtil shaPasswordUtil = new ShaPasswordUtil("AAC");
    	admin.put("pwd", shaPasswordUtil.getEncodePwStr(nPwd));
		int checkPwd = loginDao.selectCheckPwd(admin);
		
		if(checkPwd == 0){
			json.put("result", "F");
		}else{
			admin.put("nPwd", shaPasswordUtil.getEncodePwStr(pwd));
			scManagerDao.update(admin);
			json.put("result", "S");
		}
		
        Map<String, String> map = new HashMap<String, String>();
        map.put("result", "success");

        return map;
    }
}
