package kr.re.aac.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.*;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import kr.re.aac.admin.dto.MemberDto;
import kr.re.aac.common.ShaPasswordUtil;
import kr.re.aac.common.dao.commonPrivacyDao;
import kr.re.aac.util.AES;

@Controller
public class commonPrivacyController {
	@Autowired
    private commonPrivacyDao commonprivacydao;

	//비밀번호 작성 규칙 체크
    @RequestMapping("/common/doPwdPatternCheck")
    public @ResponseBody Map<String, Object> doPwdPatternCheck(String password) {
        Map<String, Object> result = new HashMap<String, Object>();
        
        result.put("code", "success");
        
        //자릿수 체크
        if(password.length() < 8){
        	result.put("code", "fail");
        	result.put("msg", "비밀번호는 최소 8자리 입니다.");
        	
        	return result;
        }
        
        //대소문자, 숫자 체크
        boolean isNumer = false;
        boolean isLowerChar = false;
        boolean isUpperChar = false;
        
        //비밀번호 존재여부 대소문자, 숫자 체크
        for(int i=0; i < password.length(); i++){
        	if(Pattern.matches("^[0-9]*$", password.substring(i, i + 1))){
        		isNumer = true;
        	}
        	
        	if(Pattern.matches("^[a-z]*$", password.substring(i, i + 1))){
        		isLowerChar = true;
        	}
        	
        	if(Pattern.matches("^[A-Z]*$", password.substring(i, i + 1))){
        		isUpperChar = true;
        	}
        }
        
        if(!(isNumer && isLowerChar && isUpperChar)){
        	result.put("code", "fail");
        	result.put("msg", "비밀번호는 대문자, 소문자, 숫자가 포함되어야 합니다.");
        	
        	return result;
        }

        return result;
    }
    
    //개인정보 접속기록 로그 저장(state - 01(접속), 02(게시글 입력), 03(게시글 수정), 04(게시글 삭제), 05(분석의뢰서 작성), 06(기관정보 입력), 07(기관정보 수정), 08(기관정보 삭제))
    public void doPrivacyLog(String state, HttpSession session){

    	MemberDto memberDto = (MemberDto)session.getAttribute("loginInfo");
    	HashMap map = (HashMap) session.getAttribute("adminSession");
    	try {
			String userIP = InetAddress.getLocalHost().getHostAddress();
			
			Map<String, String> userMap = new HashMap<String, String>();
			
			userMap.put("USERID", map.get("id").toString());
			userMap.put("USERIP", userIP);
			userMap.put("STATE", state);
			
			commonprivacydao.sysLoginsert(userMap);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
    }

    //회원관리 권한 변경시 이력 저장(state - 01(차단), 02(일반), 03(관리자))
    public void doAuthChangeLog(String state, String userId, HttpSession session){
    	
    	MemberDto memberDto = (MemberDto)session.getAttribute("loginInfo");
    	String modId = "system";
    	
    	if(memberDto != null){
    		modId = memberDto.getUserId(); 
    	}
    	
    	try {
			Map<String, String> authMap = new HashMap<String, String>();
			
			authMap.put("USERID", userId);
			authMap.put("STATE", state);
			authMap.put("MODID", modId);
			
			commonprivacydao.authChangeLoginsert(authMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
    //로그인 실패시 카운트 증가
    public void doFailCountUpdate(String userId, int failCnt){
    	Map<String, Object> cMap = new HashMap<String, Object>();
    	
    	cMap.put("USERID", userId);
    	cMap.put("FAILCNT", failCnt);
    	
    	commonprivacydao.failCountUpdate(cMap);
    }
    
    //해당 계정 로그인 실패 카운트 조회
    public int doGetFailLoginCount(String userId){
    	return commonprivacydao.getFailLoginCount(userId);
    }
    
    //로그인 5회 실패시 해당 계정 권한 차단
    public void doUpdateUserLevel(String userId, String level){
    	Map<String, Object> cMap = new HashMap<String, Object>();
    	
    	cMap.put("userId", userId);
    	cMap.put("level", level);
    	
    	commonprivacydao.updateUserLevel(cMap);
    }
    
    //암호화 방식(AES -> ShaPasswordEncoder) 변경
    public void doChangePasswordEnc(){
    	
    	//각 계정 및 AES방식 암호 조회
    	List<Map<String,String>> aesPwdList = commonprivacydao.getAESPassword();
    	
    	String userId = "";
    	String aesPassword = "";
    	String shaPassword = "";
    	
    	try {
    		for(int cnt = 0; aesPwdList.size() > cnt; cnt++){
    			
    			userId = aesPwdList.get(cnt).get("user_id");
    			aesPassword = AES.decrypt(aesPwdList.get(cnt).get("password"));

    			ShaPasswordUtil shaPasswordUtil = new ShaPasswordUtil("AAC");
    			shaPassword = shaPasswordUtil.getEncodePwStr(aesPassword);
    			
    			Map<String,Object> shaPassMap = new HashMap<String,Object>();
    			shaPassMap.put("USERID", userId);
    			shaPassMap.put("SHAPASSWORD", shaPassword);
    			
    			//ShaPasswordEncoder방식 암호 저장
    			commonprivacydao.doUpdatePasswordEnc(shaPassMap);
    		}
    		
		}catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    //임시비밀번호 생성 및 member 테이블 업데이트
    public String doCreateImsiPwd(String userId){
    	
    	String imsiPwd = "";
    	
    	for(int len=0; len < 8; len++){
    		if(len % 3 == 0){
    			char lowerChar = (char)(Math.random() * 26 + 97);
    			imsiPwd = imsiPwd + lowerChar;
    		}else if (len % 3 == 1){
    			int number = (int)(Math.random() * 10);
    			imsiPwd = imsiPwd + number;
    		}else{
    			char upperChar = (char)(Math.random() * 26 + 65);
    			imsiPwd = imsiPwd + upperChar;
    		}
    	}
    	
    	ShaPasswordUtil shaPasswordUtil = new ShaPasswordUtil("AAC");
    	Map<String,String > imsiPwdMap = new HashMap<String, String>();
    	
    	imsiPwdMap.put("USERID", userId);
    	imsiPwdMap.put("IMSIPWD", shaPasswordUtil.getEncodePwStr(imsiPwd));
    	
    	commonprivacydao.doUpdateImsiPassword(imsiPwdMap); //임시패스워드 업데이트
    	
    	return imsiPwd;
    }
}
