<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="개요" scope="request"/>
<c:set var="MENUNM" value="회사소개" scope="request"/>
<c:set var="CLASS" value="about" scope="request"/>
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
                <h3>개요</h3>
                <em>남북이 함께하는 희망찬 미래, 그곳에 현대아산이 있습니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="ideology">
              <div class="inner">
                <div class="heading">
                  <h4>기업이념</h4 >
                </div>
                <p class="ideology__text">“ 現代는 장사를 하는 단체가 아니라 국가발전을 위해서 분투하는 중추적인 역할을 하는 집단이다.<br class="pc-br"> 나는 자신있게 말하는데 現代그룹과의 과거 70년 동안의 성장은 우리 現代자신을 위해서<br class="pc-br"> 분투했을 뿐만 아니라, 국가경제를 일으키는데 선도적인 역할을 담당했다고 생각한다. ”</p>
                <p class="ideology__by"><span class="point-color01">현대그룹 명예회장</span>故 정주영</p>
              </div>
            </div>
            <div class="inner">
              <div class="heading">
                <h4>비전</h4>
              </div>
              <div class="align-center">
                <img src="/resources/images/about/img_about_01_01-pc.jpg" alt="" class="pc-img">
                <img src="/resources/images/about/img_about_01_01-mobile.jpg" alt="" class="mobile-img">
                <div class="hide-element">
                  HYUNDAI ASAN VISION<br>
                  민족기업 : 남북상생 &middot; 공영을 선도<br>
                  국민기업 : 남북 경쟁의 공동번영과 평화정착에 기여
                </div>
              </div>
              <div class="heading">
                <h4>목표</h4>
              </div>
              <div class="mobile-bxslider">
                <ul class="clearfix img-list">
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_02.jpg" alt="">
                    </div>
                    <p><span>01</span>남북경협의<br> 성공모델 창조</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_03.jpg" alt="">
                    </div>
                    <p><span>02</span>금강산, 개성을<br> 세계적 관광명소로 개발</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_04.jpg" alt="">
                    </div>
                    <p><span>03</span>개성공업지구를<br> 동북아 일류기업도시로 개발</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_05.jpg" alt="">
                    </div>
                    <p><span>04</span>남북간, 대륙간<br> 육로물류사업 진출</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_06.jpg" alt="">
                    </div>
                    <p><span>05</span>북측 SOC 개발사업<br> 본격 전개</p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_01_07.jpg" alt="">
                    </div>
                    <p><span>06</span>윤리경영,<br> 투명경영체제 확립</p>
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