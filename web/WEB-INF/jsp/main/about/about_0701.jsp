<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="CI" scope="request"/>
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
          <div class="contents ci-logo-type">
            <div class="inner">
              <div class="heading">
                <h3>CI</h3>
                <em>통일 조국을 위한 투명한 경영, 그 결실의 열매는 국민 여러분께  돌아갑니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col02">
                  <a href="/about/about_0701" class="current">Logo Type</a>
                  <a href="/about/about_0702">Signature</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <div class="heading">
                <h4>TYPE</h4>
              </div>
              <img src="/resources/images/about/img_about_0701_01-pc.jpg" alt="현대아산" class="pc-img">
              <img src="/resources/images/about/img_about_0701_01-mobile.jpg" alt="현대아산" class="mobile-img">
              <div class="mobile-bxslider">
                <ul class="clearfix img-list">
                  <li>
                    <div class="img-wrap">
                      <span>국문 로고타입</span>
                      <img src="/resources/images/about/img_about_0701_02-pc.jpg" alt="현대아산" class="pc-img">
                      <img src="/resources/images/about/img_about_0701_02-mobile.jpg" alt="현대아산" class="mobile-img">
                    </div>
                    <div>기존의 무분별하게 사용되어지고 있는 여러타입의 글꼴에서 벗어나, 현대그룹의 역사와 전통을 계승하는 장식성이 배제된 간결한 서체로 개발하였다.</div>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <span>영문 로고타입</span>
                      <img src="/resources/images/about/img_about_0701_03-pc.jpg" alt="HYUNDAI ASAN" class="pc-img">
                      <img src="/resources/images/about/img_about_0701_03-mobile.jpg" alt="HYUNDAI ASAN" class="mobile-img">
                    </div>
                    <div>글로벌 기업으로 나아가는데 있어서 그 사용과 활용이 더욱 중요하므로 한글 로고타입과 통일된 타입으로서 모던하고 절제된 디자인으로 개발하였다.</div>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <span>한문 로고타입</span>
                      <img src="/resources/images/about/img_about_0701_04-pc.jpg" alt="現代峨山" class="pc-img">
                      <img src="/resources/images/about/img_about_0701_04-mobile.jpg" alt="現代峨山" class="mobile-img">
                    </div>
                    <div>현대그룹 창립 당시의 것을 토대로 재정립한 것으로 정통성을 함의하며 제한적 사용을 원칙으로 한다.</div>
                  </li>
                </ul>
              </div>
              <div class="button-wrap">
                <a href="/downfile/about/about_0701_01.zip" class="button02" role="button" download="HABS02_Logotype_jpg">JPG 다운로드</a>
                <a href="/downfile/about/about_0701_02.zip" class="button02" role="button" download="HABS02_Logotype_ai">AI 다운로드</a>
              </div>
            </div>
            <div class="background-color-gray">
              <div class="inner">
                <div class="heading">
                  <h4>COLOR SYSTEM</h4>
                </div>
                <div class="color-system">
                  <div class="img-wrap">
                    <img src="/resources/images/about/img_about_0701_05.jpg" alt="HYUNDAI ASAN BLUE">
                    <div class="hide-element">
                      PANTONE 287C, CMYK C100 M80 Y0 K0, RGB R15 G33 B139
                    </div>
                  </div>
                  <div>
                    전용색상은 현대아산의 고유한 색상으로 모든 매체에 색상의 근간을 이루는 것으로 시각 커뮤니케이션에 있어<br class="pc-br"> 정확한 색상이미지를 결정 지워주는 요소이므로 지정된 색상을 통일성 있게 지속적으로 사용하는것이 중요하다.<br class="pc-br"><br class="mobile-br"><br class="mobile-br"> 특히 표현 매체에 따라 명도, 채도 등이 차이가 날 수 있으므로 색상 재현시 최상의 표준색상을 얻기 위해서는<br class="pc-br"> 색상 견본과 비교하여 별색인쇄를 원칙으로 해야하며 정확한 사용 및 관리가 됩니다.
                    <div class="button-wrap align-left">
                      <a href="/downfile/about/about_0701_03.zip" class="button02" role="button" download="HABS07_ColorSystem_jpg">JPG 다운로드</a>
                      <a href="/downfile/about/about_0701_04.zip" class="button02" role="button" download="HABS07_ColorSystem_ai">AI 다운로드</a>
                    </div>
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