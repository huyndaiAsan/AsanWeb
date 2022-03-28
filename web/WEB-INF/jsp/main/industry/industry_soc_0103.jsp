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
                    <a href="/industry/industry_soc_0103" class="swiper-slide current">개발계획</a>
                    <a href="/industry/industry_soc_0104" class="swiper-slide">사업구도</a>
                    <a href="/industry/industry_soc_0105" class="swiper-slide">추진현황</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper--link -->
            <div class="inner development-plan">
              <div class="heading">
                <h4>개성공업지구 장기 개발계획</h4>
              </div>
              <div class="line">
                <div class="img-wrap align-center">                
                  <img src="/resources/images/industry_soc/img_industry_soc_0103_01-pc.png" alt="전체 2,000만평" class="pc-img">
                  <img src="/resources/images/industry_soc/img_industry_soc_0103_01-mobile.png" alt="전체 2,000만평" class="mobile-img">
                </div>
                <ul class="clearfix">
                  <li>
                    <strong>1단계</strong>
                    <div>
                      <em>100만평</em>
                      <p>공장구역 <span>100만평</span></p>
                    </div>
                  </li>
                  <li>
                    <strong>2단계</strong>
                    <div>
                      <em>250만평</em>
                      <p>공장구역 <span>150만평</span></p>
                      <p>생활구역 <span>30만평</span></p>
                      <p>상업구역 <span>20만평</span></p>
                      <p>관광구역 <span>50만평</span></p>
                    </div>
                  </li>
                  <li>
                    <strong>3단계</strong>
                    <div>
                      <em>550만평</em>
                      <p>공장구역 <span>100만평</span></p>
                      <p>생활구역 <span>70만평</span></p>
                      <p>상업구역 <span>30만평</span></p>
                      <p>관광구역 <span>100만평</span></p>
                    </div>
                  </li>
                  <li>
                    <strong>개성시가지 <br class="pc-br">400만평</strong>
                  </li>
                  <li>
                    <strong>장래확장지 <br class="pc-br">700만평</strong>
                  </li>
                </ul>
              </div>
            </div>
            <div class="attachment-img-wrap">
              <p class="hide-element">개성공업지구 개발총계획</p>
            </div>
            <div class="inner">
              <div class="video-wrap">
                <iframe height="675" src="https://www.youtube.com/embed/l2rqoFaUaJs?rel=0" allowfullscreen></iframe>
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
	<script src="/resources/libs/swiper/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
</html>