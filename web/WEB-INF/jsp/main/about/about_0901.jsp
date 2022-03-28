<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="건설 BI" scope="request"/>
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
          <div class="contents bi-logo-type">
            <div class="inner">
              <div class="heading">
                <h3>건설 BI</h3>
                <div class="prahills_wrap">
                	<div class="left"><img src="/resources/images/about/img_about_0901_hyundai_logo.png" alt="현대아산"></div>
                	<div class="right">
                		<h5>Brand Mark</h5>
                		<p>
                			프라힐스는 Prime + Hills의 합성어로 현대아산의 오랜 경험과 축적된 기술을 집약시켜 만드는<br>
                			새로운 개념의 프리미엄 주거 브랜드입니다. 안정적인 정삼각 심볼은 주거의 가치를 균형있게 담겠다는<br>
                			의지입니다. 심볼을 이루는 9개의 삼각형과 그린&옐로우 컬러는 현대그룹의 자산을 재해석하여<br>
                			풍부한 시공기술과 아름다운 설계를 표현합니다. 여러개의 삼각형이 모여 각진 보석처럼 보이는 형태는<br>
                			프라힐스의 최고급 주거문화를 나타냅니다.
                		</p>
                	</div>
                </div>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col04">
                  <a href="/about/about_0901" class="current">Brand Essence</a>
                  <a href="/about/about_0902">Core Value</a>
                  <a href="/about/about_0903">Logo Type</a>
                  <a href="/about/about_0904">Color&Grid</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <div class="brandEssence">
              	<h5>Brand Essence</h5>
              	<h6>The Art of Balance</h6>
              	<p>
              		완벽한 주거공간을 지향하는 프라힐스는
              		<br><br>
              		당신이 주거가치의 절정을 경험할 수 있도록<br>
              		단순한 집이 아닌 균형있게 사는 방식을 제안합니다
              		<br><br>
              		때로는 오피스처럼, 때로는 카페처럼<br>
              		당신의 삶을 위한 가치의 밸런스를 설계합니다
              		<br><br>
              		'현대'의 축적된 기술과 미학적 공간 디자인은<br>
              		완벽함을 넘어 지속가능한 브랜드 가치를 선사할 것 입니다
              		<br><br>
              		일과 휴식, 기본과 혁신, 자연과 기술<br>
              		푀고의 집이 가져야할 다양한 가치의 밸런스!<br>
              		오직 프라힐스에서 느껴보십시오
              	</p>
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