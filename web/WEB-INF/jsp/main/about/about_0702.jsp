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
          <div class="contents ci-signature">
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
                  <a href="/about/about_0701">Logo Type</a>
                  <a href="/about/about_0702" class="current">Signature</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <div class="heading">
                <h4>기본형</h4>
              </div>
            </div>
            <div class="img-wrap border">
              <div class="inner">
                <img src="/resources/images/about/img_about_0702_01.jpg" alt="">
                <a href="/resources/images/about/img_about_0702_01.jpg" target="_blank" class="mobile-btn hide-text">확대</a>
              </div>
            </div>
            <div class="inner">
              <p>시그니춰는 현대아산의 핵심요소인 심볼과 로고타입의 조합을 말하는 것으로 이는 현대아산의 공식적인 표기 방식으로 조형성과 통일성을 유지하고<br class="pc-br"> 있으므로 조합규정을 반드시 준수하여 적용매체에 따라 적절히 선택하여 사용한다. 적용매체에 따라 컬러타입<br class="pc-br"> 시그니춰와 1도타입 시그니춰의 사용을 엄격히 준수하며, 시그니춰 사용시 비례나 간격, 크기를 임의로 변경할 수 없으므로 시그니춰<br class="pc-br"> 사용은 매뉴얼의 다운로드하여 비례 축소, 확대하여 사용하는것을 원칙으로 한다.</p>
              <div class="button-wrap">
                <a href="/downfile/about/about_0702_01.zip" class="button02" role="button" download="HABS03_SignatureBasic_jpg">JPG 다운로드</a>
                <a href="/downfile/about/about_0702_02.zip" class="button02" role="button" download="HABS03_SignatureBasic_ai">AI 다운로드</a>
              </div>
            </div>
            <div class="background-color-gray">
              <div class="inner">
                <div class="heading">
                  <h4>응용형</h4>
                </div>
                <div class="img-wrap">
                  <img src="/resources/images/about/img_about_0702_02.jpg" alt="">
                  <div class="hide-element">"Opening The way"는 21세기 무한경쟁시대에 글로벌 경쟁력을 갖춘 기업으로 나아가기 위한 일환으로 장기적으로 현대아산의 기업철학과 비전을 널리 알리고자 도입된 Brand Statement로 남북 교류와 협력을 통해 남북의 신뢰를 쌓고 민족의 공동번영을 위해 헌신하며 미래 희망의 역사를 세우는 현대아산의 의지를 담고 있다. Opening The Way의 국문의미로 개발된 "미래를 열어가는"의 Statement적용은 북측의 홍보활동시 매체 상황에 따라 적용할 수 있으며, 남측 및 해외 마케팅 홍보활동에는 Openeing The Way로 통일성있게 사용하도록 한다.</div>
                  <a href="/resources/images/about/img_about_0702_02.jpg" target="_blank" class="mobile-btn hide-text">확대</a>
                </div>
                <p>시그니춰 응용형은 시그니춰 기본형의 조형성과 통일성을 고려하여 Statement와 함께 조합된 형태로 아래의 규정을 엄격히 준수하며, 사용시 비례나 간격,<br class="pc-br"> 크기를 임의로 변경할 수 없으므로 시그니춰 사용은 매뉴얼의 CD-Rom에 수록된 원고를 다운로드하여 비례 축소, 확대하여 사용하는것을 원칙으로 한다.<br class="pc-br"> 단, 시그니춰 응용형을 북측에서 사용해야 할 경우, Statement는 북측용으로 개발된 국문 Statement를 적용하도록 한다.</p>
                <div class="button-wrap">
                  <a href="/downfile/about/about_0702_03.zip" class="button02" role="button" download="HABS04_SignatureApplicatio_jpg">JPG 다운로드</a>
                  <a href="/downfile/about/about_0702_04.zip" class="button02" role="button" download="HABS04_SignatureApplicatio_ai">AI 다운로드</a>
                </div>
              </div>
            </div>
            <div class="inner">
              <div class="heading">
                <h4>COLOR SYSTEM</h4>
              </div>
              <ul class="color-system">
                <li class="item01">
                  <strong>HYUNDAI ASAN<br> YELLOW</strong>
                  <ul>
                    <li><b>PANTONE</b> 130C</li>
                    <li><b>CMYK</b> C0 M30 Y100 K0</li>
                    <li><b>RGB</b> R255 G179 B0</li>
                  </ul>
                </li>
                <li class="item02">
                  <strong>HYUNDAI ASAN<br> GREEN</strong>
                  <ul>
                    <li><b>PANTONE</b> 3415C</li>
                    <li><b>CMYK</b> C0 M100 Y100 K0</li>
                    <li><b>RGB</b> R0 G136 B55</li>
                  </ul>
                </li>
                <li class="item03">
                  <strong>HYUNDAI ASAN<br> BLUE</strong>
                  <ul>
                    <li><b>PANTONE</b> 287C</li>
                    <li><b>CMYK</b> C100 M80 Y0 K0</li>
                    <li><b>RGB</b> R15 G33 B139</li>
                  </ul>
                </li>
                <li class="item04">
                  <strong>HYUNDAI ASAN<br> GREY</strong>
                  <ul>
                    <li><b>PANTONE</b> Cool Grey 3</li>
                    <li><b>CMYK</b> C0 M0 Y0 K20</li>
                    <li><b>RGB</b> R204 G204 B204</li>
                  </ul>
                </li>
                <li class="item05">
                  <strong>HYUNDAI ASAN<br> GOLD</strong>
                  <ul>
                    <li><b>PANTONE</b> 871C</li>
                    <li><b>CMYK</b> C47 M48 Y75 K1</li>
                    <li><b>RGB</b> R156 G135 B82</li>
                  </ul>
                </li>
                <li class="item06">
                  <strong>HYUNDAI ASAN<br> SILVER</strong>
                  <ul>
                    <li><b>PANTONE</b> 877C</li>
                    <li><b>CMYK</b> C48 M39 Y38 K0</li>
                    <li><b>RGB</b> R150 G149 B148</li>
                  </ul>
                </li>
              </ul>
              <p>시그니춰 색상활용은 각 매체에 보다 효과적이고 기능적인 적용을 위하여 매우 중요하다. 현대아산의 시그니춰 색상활용은 Full Color 기본형을 원칙으로<br class="pc-br"> 하나 시각적인 효과를 위해 금색, 은색, 엠보, 박 등의 특별한 색상 및 특수표현이 가능하다.</p>
              <div class="button-wrap">
                <a href="/downfile/about/about_0702_05.zip" class="button02" role="button" download="HABS08_ColorVariation_jpg">JPG 다운로드</a>
                <a href="/downfile/about/about_0702_06.zip" class="button02" role="button" download="HABS08_ColorVariation_ai">AI 다운로드</a>
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