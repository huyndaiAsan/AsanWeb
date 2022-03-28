package kr.re.aac.common.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.re.aac.common.dao.commonCodeDao;

@Controller
public class commonCodeController {
	@Autowired
    private commonCodeDao commonCodedao;

    @RequestMapping("/common/chnCode")
    public @ResponseBody Map<String, Object> doPwdPatternCheck(
    		@RequestParam Map param){
        Map<String, Object> result = new HashMap<String, Object>();
        
        if(param.get("cd").equals("")){
        	return result;
        }
        
        Map searchMap = new HashMap();
        searchMap.put("cd", param.get("cd") );
        if(param.get("cd").toString().length() == 3){
        	searchMap.put("depth", "2" );
        }else if(param.get("cd").toString().length() == 6){
        	searchMap.put("depth", "3" );
        }else{
        	searchMap.put("depth", "4" );
        }
        
    	result.put("codeList", commonCodedao.selectList(searchMap));
        result.put("code", "success");
        
        return result;
    }
    
}
