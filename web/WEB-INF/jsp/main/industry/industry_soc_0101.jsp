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
                    <a href="/industry/industry_soc_0101" class="swiper-slide current">사업개요</a>
                    <a href="/industry/industry_soc_0102" class="swiper-slide">공단역사</a>
                    <a href="/industry/industry_soc_0103" class="swiper-slide">개발계획</a>
                    <a href="/industry/industry_soc_0104" class="swiper-slide">사업구도</a>
                    <a href="/industry/industry_soc_0105" class="swiper-slide">추진현황</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper--link -->
            <div class="inner">
              <div class="page-intro clearfix">
                <img src="/resources/images/industry_soc/img_industry_soc_0101_01.jpg" alt="">
                <div>
                  <strong>민족경제공동체의 초석</strong>
                  <p>2003년 6월 착공식을 개최한 개성공업지구 건설사업은 남북이 협력하여 추진하는 사업으로서 남북의 경제적 상호 이익과 한반도의 긴장 완화 및 평화 분위기 조성을 통한 남북 공동번영을 도모하는 역사적 사업이며, 개성공업지구 건설사업의 성공적 수행은 남측의 생산력 증대 및 수익성 제고와 국제 경쟁력 향상에 기여하고 북측은 근로소득, 세입 및 인프라 등 직접적 수익 외에 기술습득 및 인력양성을 통한 경제발전을 도모할 수 있는 중요한 계기가 될 것이며, 2011년 완공을 목표로 조성되고 있는 개성공업지구는 중국을 비롯한 다른 경쟁 공단에 비해 뛰어난 가격경쟁력 및 입지적 조건으로 인해 동북아 경제의 중심지가 될 것입니다.</p>
                </div>
              </div>
            </div>
            <div class="purpose">
              <div class="inner">
                <div class="heading">
                  <h4>사업 목적</h4>
                </div>
                <!-- //heading -->
                <div class="mobile-bxslider">
                  <ul class="clearfix">
                    <li class="item01">개성지역을 남측 및 외국의 자본과 기술 그리고 북측의 인력과 자원을 효율적으로 경합하여 세계적으로 경쟁력을 지닌 경제특구로 개발</li>
                    <li class="item02">공업생산 및 수출기능뿐만 아니라 물류 문화 관광 상업 도시로 개발하여 외화획득을 확대함으로써 민족공동경제발전의 시범적 터전으로 육성</li>
                    <li class="item03">남북의 기업 및 외국의 뛰어난 기업을 적극적으로 유치하기 위하여 매력적인 투자환경과 경쟁력 있는 입주 여건을 조성</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="inner">
              <div class="location-scale">
                <div class="heading">
                  <h4>위치 및 규모</h4>
                  <em>황해북도 개성시 봉동리 일원으로 서울에서 60km, 인천공항에서 50km, 평양에서 160km<br class="pc-br">지점으로서 수도권에서 접근이 용이한 지점에 위치</em>
                </div>
                <!-- //heading -->
                <div class="img-wrap">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_02-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_02-mobile.jpg" alt="" class="mobile-img">
                  <p>개성공업지구 위치도</p>
                </div>
                <div class="location-scale__desc">
                  <strong>개성공업지구는 65.7 ㎢ (2,000만평)</strong>
                  <p>공장구역 : 19.7 ㎢ (600만평) &nbsp;&nbsp;&nbsp; <br class="mobile-br">생활구역 : 3.3 ㎢ (100만평)</p>
                  <p>관광구역 : 4.9 ㎢ (150만평) &nbsp;&nbsp;&nbsp; <br class="mobile-br">상업구역 : 1.7 ㎢ (50만평)</p>
                  <p>개성시가지 : 13.1 ㎢ (400만평) → 북측이 자체개발 예정</p>
                  <p>확장구역 : 23.0 ㎢ (700만평) → 추가확정 예정 </p>
                  <strong>확장계획</strong>
                  <p>사업성과에 따라 약 130 ㎢ (4,000만평)으로 확대</p>
                  <strong>장기계획</strong>
                  <p>약 300 ㎢ (1억평)까지 확대 개발</p>
                  <strong>단계별 개발</strong>
                  <p>1단계 100만평 (조성완료)</p>
                  <p>2단계 250만평 (계획중)</p>
                  <p>3단계 550만평 (계획중)</p>
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_03.jpg" alt="">
                </div>
              </div>
              <div class="environment">
                <div class="heading">
                  <h4>입지 환경</h4>
                </div>
                <!-- //heading -->
                <div class="item01">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_04.jpg" alt="">
                  <strong>개성공업지구는</strong>
                  <p>국토의 X자형 축의 중앙에 위치하여 남북간 인적&middot;물적 교류가 용이한 지역이다. 인천항 및 평택항 등 무역항과 평양공항 및 인천공항 등 국제공항에 접근해 미주 및 아시아 대륙으로 물류수송이 용이하며, 중국 대륙간철도(TCR) 및 시베리아횡단철도(TSR) 등을 이용하여 유럽으로 직접연결이 가능하다.</p>
                </div>
                <div class="item02">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_05.jpg" alt="">
                  <strong>2,000만 명 이상의</strong>
                  <p>소비인구를 가진 남측의 수도권지역과 연접하여 제품판매를 위한 소비시장이 확보되어 있다. 지리적으로 남측지역에 근접해 남측의 전력통신 등 초기기반시설의 활용이 가능하며, 도로나 철도와 같은 수송기반시설의 연결비용이 적게 든다.</p>
                </div>
              </div>
              <div class="remains">
                <div class="heading">
                  <h4>문화유적 및 역사성</h4>
                  <em>개성은 과거 고려왕조의 고도(古都)로서 풍부한 역사적&middot;문화적 관광자원을 기반으로<br class="pc-br"> 현재에도 외국 관광객의 북측 관광시 주요경유지로 각광받고 있다.</em>
                </div>
                <!-- //heading -->
                <div class="img-wrap clearfix">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_06.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_07.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_0101_08.jpg" alt="">
                </div>
              </div>
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