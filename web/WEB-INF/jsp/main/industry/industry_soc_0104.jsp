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
                    <a href="/industry/industry_soc_0104" class="swiper-slide current">사업구도</a>
                    <a href="/industry/industry_soc_0105" class="swiper-slide">추진현황</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper--link -->
            <div class="inner composition">
              <div class="heading">
                <h4>현대아산은 개성공업지구 2,000만평 총개발권자로서</h4>
              </div>
              <p class="point-color02">2000. 북측과 ‘공업지구 건설운영에 관한 합의서’체결</p>
              <p class="point-color02">2002. 북측으로부터 2,000만평 토지이용증 수령</p>
              <p class="point-color02">2005. 개성공업지구 2,000만평 개발총계획 수립 및 인허가 획득</p>
              <p class="point-color02">주요사업권(북측 개성공업지구법)</p>
              <p>&middot; 개발계획 수립</p>
              <p>&middot; 하부구조건설(전력, 통신, 용수 등), 에너지공급사업, 수송사업, 물자보관사업, 광고사업, 살림집건설사업, 관광오락업 등</p>
            </div>
          </div>
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