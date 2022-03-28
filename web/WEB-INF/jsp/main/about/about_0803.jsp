<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="오시는 길" scope="request"/>
<c:set var="CLASS" value="about" scope="request"/>
<c:set var="MENUNM" value="회사소개" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/about.css">
<style type="text/css">
</style>
</head>
  <body class="about">
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
          <div class="contents">
            <div class="inner">
              <div class="heading">
                <h3>오시는 길</h3>
                <em>Opening the way, 미래를 열어가는 현대아산이 되겠습니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="/about/about_0801">서울본사</a>
                  <a href="/about/about_0802">고성사무소</a>
                  <a href="/about/about_0803" class="current">도라산사무소</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21800.963004381298!2d126.70603237430011!3d37.895964763133236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cf3efc36ee495%3A0x8c31c1794bb6fed7!2z6rK96riw64-EIO2MjOyjvOyLnCDsnqXri6jrqbQg64-E65287IKw66asIDE0MQ!5e0!3m2!1sko!2skr!4v1536824595743" 
              width="100%" height="400" frameborder="0" style="border:0" allowfullscreen id="map"></iframe>
              
              <div class="map-table">
                <div class="map-table__row">
                  <div class="map-table__th">주소안내</div>
                  <div class="map-table__td">경기도 파주시 장단면 도라산리 141번지</div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">Tel</div>
                  <div class="map-table__td">031.954.3940</div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">Fax</div>
                  <div class="map-table__td">031.954.3941</div>
                </div>
              </div>
            </div>
          </div>
          <!-- //contents --> 
        </div>
        <!-- //container -->
      </div>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
</html>