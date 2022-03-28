package kr.re.aac.interceptors;

import kr.re.aac.admin.dto.MemberDto;
import kr.re.aac.common.ShaPasswordUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor extends HandlerInterceptorAdapter {
    @SuppressWarnings("unused")
	private Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        System.out.println("================== inspector");
        try {
        	HashMap admin = (HashMap) session.getAttribute("adminSession");

            StringBuffer url = request.getRequestURL();
            String queryString = "";

            if (request.getQueryString() != null) {
                queryString = "?" + request.getQueryString();
            }
           System.out.println(admin);
            String loginUrl = "/scadmin/login";
            if(admin == null) {
                request.setAttribute("message", "로그인이 필요합니다.");
                request.setAttribute("redirectUrl", loginUrl);
                request.getRequestDispatcher("/WEB-INF/jsp/common/message.jsp").forward(request, response);
                return false;
            }

		} catch (Exception e) {
			return false;
		}
        
        return true;
    }
}
