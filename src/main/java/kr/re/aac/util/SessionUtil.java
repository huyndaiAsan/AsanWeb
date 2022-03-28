package kr.re.aac.util;


import kr.re.aac.admin.dto.MemberDto;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpSession;

public class SessionUtil {

    public static boolean isAdmin(HttpSession session) {
        boolean isAdmin = false;

        MemberDto memberDto = (MemberDto) session.getAttribute("loginInfo");
        if(memberDto == null) {
            return isAdmin;
        }

        if(StringUtils.equalsIgnoreCase(memberDto.getLevel(), "admin")) {
            isAdmin = true;
        }

        return isAdmin;
    }

    public static String level(HttpSession session) {
        MemberDto memberDto = (MemberDto) session.getAttribute("loginInfo");
        if(memberDto == null) {
            return null;
        }

        return memberDto.getLevel();
    }
}
