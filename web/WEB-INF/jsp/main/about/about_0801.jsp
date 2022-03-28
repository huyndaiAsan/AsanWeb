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
            <h2>회사소개</h2>
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
                  <a href="/about/about_0801" class="current">서울본사</a>
                  <a href="/about/about_0802">고성사무소</a>
                  <a href="/about/about_0803">도라산사무소</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <!-- <div class="map" id="map"></div> -->
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.116556418335!2d126.99845895123698!3d37.57587297969702!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca3263bb9f6b5%3A0xc8a12b834acf41be!2z7ZiE64yA6re466O567mM65Sp!5e0!3m2!1sko!2skr!4v1536824302043" 
              width="100%" height="400" frameborder="0" style="border:0" allowfullscreen id="map"></iframe>
              <div class="map-table">
                <div class="map-table__row">
                  <div class="map-table__th">주소안내</div>
                  <div class="map-table__td">서울 종로구 율곡로 194 현대그룹빌딩</div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">Tel</div>
                  <div class="map-table__td">02.3669.3000</div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">Fax</div>
                  <div class="map-table__td">02.3669.3690</div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">지하철</div>
                  <div class="map-table__td">
                    <p><i class="line4">4호선</i> 혜화역 하차 3번출구</p>
                    <p><i class="line1">1호선</i> 종로5가역 2번출구 도보 10분</p>
                  </div>
                </div>
                <div class="map-table__row">
                  <div class="map-table__th">버스</div>
                  <div class="map-table__td">
                    <p><i class="bus1">간선</i> 102, 107, 108, 109, 162, 301</p>
                    <p><i class="bus2">지선</i> 7025</p>
                  </div>
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