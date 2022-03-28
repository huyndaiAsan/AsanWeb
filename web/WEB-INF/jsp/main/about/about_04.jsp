<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="사회공헌" scope="request"/>
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
          <div class="contents contribution">
            <div class="inner">
              <div class="heading">
                <h3>사회공헌</h3>
                <em>남과북의 상생을 추구하듯 기업과 국민의 상생을 추구합니다.</em>
              </div>
              <!-- //heading -->
              <div class="contribution__img-wrap clearfix">
                <img src="/resources/images/about/img_about_04_01.jpg" alt="">
                <img src="/resources/images/about/img_about_04_02.jpg" alt="">
                <img src="/resources/images/about/img_about_04_03.jpg" alt="">
              </div>
              <p>현대아산은 <span class="point-color01">대북 인도지원 및 금강산 이산가족상봉행사 지원,<br class="pc-br"> 소외계층 지원사업</span>을 적극적으로 실천하고 있습니다.</p>
              <div class="mobile-bxslider">
                <ul class="clearfix img-list">
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_04_04.jpg" alt="">
                    </div>
                    <p><strong>이산가족 상봉지원</strong>남북평화의 상징 '금강산'에서 실시되는<br> 이산가족 상봉행사에<br> 현장 지원을 해오고 있습니다.</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_04_05.jpg" alt="">
                    </div>
                    <p><strong>대북인도 지원</strong>1998년, 2000년 총 세 차례에 걸쳐 소 1,501<br class="pc-br">마리, 차량 100대를 지원했으며, 2004년<br class="pc-br"> 용천역 사고시 식료품 지원과 2006년<br class="pc-br"> 내금강군 큰 물 피해 지원을 하였습니다.</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_04_06.jpg" alt="">
                    </div>
                    <p><strong>사회복지시설 봉사활동</strong>2005년 하반기부터 영유아 보육활동 및<br> 시설청소 등 사회복지시설 봉사활동을<br> 정례적으로 펼치고 있습니다.</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_04_07.jpg" alt="">
                    </div>
                    <p><strong>1사 1촌 맺기 운동</strong>강원도 고성군 초도 1리와 자매결연을 통해<br class="pc-br"> 농촌 일손을 돕고, 농산물 직거래를 활성화<br class="pc-br"> 하는 등 내실 있는 지원 활동을 수행하고<br class="pc-br"> 있습니다.</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_04_08.jpg" alt="">
                    </div>
                    <p><strong>소외계층 초청행사</strong>실향민, 무의탁 노인과 소녀소녀<br> 가장을 위한 초청행사를<br> 실시하고 있습니다</p>
                  </li>
                </ul>
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