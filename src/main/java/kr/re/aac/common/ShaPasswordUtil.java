package kr.re.aac.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;

public class ShaPasswordUtil {
	
	/** Log Info */
    protected Log log = LogFactory.getLog(this.getClass());
    ShaPasswordEncoder passwordEncoder = new ShaPasswordEncoder();
    String salt;
    
    public ShaPasswordUtil(String salt) {
    	this.salt = salt;
    }
    
    public String getEncodePwStr(String pwStr) {
    	String encPwStr;    	
    	encPwStr = passwordEncoder.encodePassword(pwStr, this.salt);    	
    	return encPwStr; 
    }
}
