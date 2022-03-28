<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="개인정보 보호방침" scope="request"/>
<c:set var="MENUNM" value="회사소개" scope="request"/>
<c:set var="CLASS" value="footer_link" scope="request"/>
<c:choose>
	<c:when test="${empty param.vs }">
		<c:set var="vs" value="private20180918" scope="request"/>
	</c:when>
	<c:otherwise>
		<c:set var="vs" value="private${param.vs }" scope="request"/>
	</c:otherwise>
</c:choose>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/footer_link.css">
<style type="text/css">
</style>
</head>
  <body class="footer_link">
    <div class="wrap">
      <div class="wrap__row">
      	<jsp:include page="/WEB-INF/jsp/include/header.jsp" flush="false" />
        <!-- //header -->
      </div>
      <div class="wrap__row wrap__row--height-full">
        <div class="container">
          <div class="visual">
            <h2>개인정보 처리방침</h2>
          </div>
          <!-- //visual -->
	      <jsp:include page="/WEB-INF/jsp/include/menuBar.jsp" flush="false" />
          
          <!-- //content-top-bar -->
          <div class="contents footer_link__content">
            <div class="inner">
              <div class="heading">
                <h3>개인정보 처리방침</h3>
              </div>
              <!-- //heading -->
              <div class="drop-down-menu clearfix">
                <div>
                  <button>이전 개인정보처리방침</button>
                  <ul>
                    <li><a href="/guide/private?vs=20180918">2018.09.18~현재 적용</a></li>
                    <li><a href="/guide/private?vs=20170919">2017.09.19~2018.09.17 적용</a></li>
                    <li><a href="/guide/private?vs=20170419">2017.04.19~2017.09.18 적용</a></li>
                    <li><a href="/guide/private?vs=20160921">2016.09.21~2017.04.18 적용</a></li>
                    <li><a href="/guide/private?vs=20150515">2015.05.15~2016.09.20 적용</a></li>
                    <li><a href="/guide/private?vs=20111201">2011.12.01~2015.05.14 적용</a></li>
                  </ul>
                </div>
              </div>
              <jsp:include page="/WEB-INF/jsp/include/private/${vs }.jsp" flush="false" />
        </div>
        <!-- //container -->
      </div>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
</html>