package kr.re.aac.scadmin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import kr.re.aac.common.ShaPasswordUtil;
import kr.re.aac.common.controller.commonPrivacyController;
import kr.re.aac.scadmin.dao.ScAdminLoginDao;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/scadmin/")
public class ScAdminLoginController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    private commonPrivacyController commonprivacycontroller;
    
    @Autowired
    private ScAdminLoginDao loginDao;

   
    @ResponseBody
	@RequestMapping(value = "loginProc", method = RequestMethod.POST)
	public String loginProc(
			@RequestParam Map param
			,@RequestParam(value = "id") String id
			,@RequestParam(value = "pwd") String pwd
			,HttpSession session
			,HttpServletRequest request
			,HttpServletResponse response) throws Exception {

		JSONObject json = new JSONObject();
		try {
			// 패스워드 단방향 암호화 체크
			ShaPasswordUtil shaPasswordUtil = new ShaPasswordUtil("AAC");
			param.put("pwd", shaPasswordUtil.getEncodePwStr(pwd));
			int checkId = loginDao.selectCkId(param);
			
			System.out.println(shaPasswordUtil.getEncodePwStr(pwd));
			if(checkId == 0 ){
				json.put("result", "F");
			}else{
				int checkPwd = loginDao.selectCheckPwd(param);
				
				if(checkPwd == 0){
					json.put("result", "F");
				}else{
					HashMap result = loginDao.selectOne(param);
					WebUtils.setSessionAttribute(request, "adminSession", result);
					json.put("result", "S");
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			json.put("result", "overFalse");
		}
		return json.toString();

	}
    
    @RequestMapping(value = "logout")
	public String logoutProc(
			HttpSession session
			,HttpServletRequest request
			,HttpServletResponse response) throws Exception {

		JSONObject json = new JSONObject();
		WebUtils.setSessionAttribute(request, "adminSession", null);
		return "redirect:/scadmin/login";

	}
}
