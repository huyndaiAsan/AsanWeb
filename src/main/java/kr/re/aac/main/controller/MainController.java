package kr.re.aac.main.controller;

import java.io.File;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
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
import kr.re.aac.scadmin.dao.ScAdminBoardDao;
import kr.re.aac.scadmin.dao.ScAdminFileDao;
import kr.re.aac.util.Pager;

@Controller
@RequestMapping("")
public class MainController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    private final static String UPLOAD_PATH = "/";
    
    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    private commonPrivacyController commonprivacycontroller;
    
    @Resource(name = "scAdminBoardDao")
    private ScAdminBoardDao scBoardDao;

    @Resource(name = "boardDao")
    private BoardDao boardDao;
    
    @RequestMapping("/main")
    public String list(Model model) {
    	
    	Map params = new HashMap();
    	params.put("pageUnit", "4");
    	params.put("pageNo", "1");
    	params.put("category", "notice");
    	model.addAttribute("noticeList", boardDao.selectList(params));
    	params.put("pageUnit", "5");
    	params.put("category", "news");
    	model.addAttribute("newsList", boardDao.selectList(params));
    	
       	return "main/main";
    }

}
