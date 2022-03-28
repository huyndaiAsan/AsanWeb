<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="개성공업지구" scope="request"/>
<c:set var="CLASS" value="industry_soc" scope="request"/>
<c:set var="MENUNM" value="개성공업지구·SOC" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/industry_soc.css">
<style type="text/css">
</style>
</head>
  <body class="industry_soc">
    <div class="wrap">
      <div class="wrap__row">
      	<jsp:include page="/WEB-INF/jsp/include/header.jsp" flush="false" />
        <!-- //header -->
      </div>
      <div class="wrap__row wrap__row--height-full">
        <div class="container">
          <div class="visual">
            <h2>${MENUNM }</h2>
          </div>
          <!-- //visual -->
	      <jsp:include page="/WEB-INF/jsp/include/menuBar.jsp" flush="false" />
          
          <!-- //content-top-bar -->
          <div class="contents">
            <div class="inner">
              <div class="heading">
                <h3>개성공업지구</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="mobile-swiper--link">
              <div class="inner">
                <div class="mobile-swiper">
                  <div class="swiper-wrapper col05">
                    <a href="/industry/industry_soc_0101" class="swiper-slide ">사업개요</a>
                    <a href="/industry/industry_soc_0102" class="swiper-slide ">공단역사</a>
                    <a href="/industry/industry_soc_0103" class="swiper-slide ">개발계획</a>
                    <a href="/industry/industry_soc_0104" class="swiper-slide ">사업구도</a>
                    <a href="/industry/industry_soc_0105" class="swiper-slide current">추진현황</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper--link -->
            <div class="inner push">
              <div class="heading">
                <h4>개성공업지구 총개발계획 및 1단계 개발계획 수립</h4>
              </div>
              <p class="point-color02">개발계획 수립(2,000만평 개발총계획, 1단계 개발계획)</p>
              <p class="point-color02">남&middot;북측 정부협의(남측 통일부 및 북측 중앙특구개발지도총국)</p>
              <div class="heading">
                <h4>1단계 개발사업 건설공사 및 공공&middot;민간 건축공사 수행</h4>
              </div>
              <p class="point-color02">1단계 개발사업 건설공사 수행</p>
              <p>&middot; 부지조성공사(토공사, 도로및상하수도, 조경공사 등)</p>
              <p>&middot; 기반시설공사(폐수종말처리장, 폐기물처리장, 정배수장 등)</p>
              <p class="point-color02">공공 및 민간 건축공사</p>
              <p>&middot; 공공(남북경협청사, 산단공&middot;관리위 아파트형공장, 직업훈련센터 등)</p>
              <p>&middot; 민간(한누리호텔, 입주기업공장건축, 송악프라자 등)</p>
              <div class="heading">
                <h4>유통&middot;면세, 건설자재생산업 수행</h4>
              </div>
              <p>&middot; 송악프라자 운영(호텔, 식음료업 등)</p>
              <p>&middot; 개성면세점 운영</p>
              <p>&middot; 건설자재생산판매(아스콘, 레미콘, 골재생산 등)</p>
            </div>
          </div>
          <!-- //contents -->
          <!-- //contents -->
        </div>
        <!-- //container -->
      </div>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script src="/resources/libs/swiper/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
</html>