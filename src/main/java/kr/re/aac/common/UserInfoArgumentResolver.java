package kr.re.aac.common;

import kr.re.aac.admin.dto.MemberDto;
import kr.re.aac.admin.dto.UserInfo;
import kr.re.aac.common.annotation.UserId;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;

public class UserInfoArgumentResolver implements HandlerMethodArgumentResolver {
    @Override
    public boolean supportsParameter(MethodParameter param) {
        Annotation[] paramAnns = param.getParameterAnnotations();
        Class paramType = param.getParameterType();

        for(Annotation ann : paramAnns) {
            if(UserId.class.isInstance(ann)) {
                return true;
            }
        }

        return false;
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
        HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
        MemberDto memberDto = (MemberDto) request.getSession().getAttribute("loginInfo");
        if(memberDto == null) {
            return "";
        }

        return memberDto.getUserId();
    }
}
