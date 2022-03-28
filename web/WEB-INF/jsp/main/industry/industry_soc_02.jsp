<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="SOC사업" scope="request"/>
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
                <h3>SOC사업</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
              <!-- //heading -->
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_01.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_02.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_03.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_04.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_05.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_06.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_07.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_08.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_09.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_10.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_11.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_12.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_13.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_14.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_15.jpg" alt="">
                  <img src="/resources/images/industry_soc/img_industry_soc_02_gallery_16.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>도로사업</p>
                    <p>철도사업</p>
                    <p>육교사업</p>
                    <p>경의선 철도연결(2002)</p>
                    <p>경의선 철도연결(2002)</p>
                    <p>경의선 철도연결(2002)</p>
                    <p>동해선 철도연결(2005)</p>
                    <p>동해선 철도연결(2005)</p>
                    <p>태양광</p>
                    <p>풍력</p>
                    <p>화력발전소</p>
                    <p>송전선로</p>
                    <p>통신</p>
                    <p>댐</p>
                    <p>수자원</p>
                    <p>비행장</p>
                  </div>
                </div>
                <div class="gallery-list">
                  <div class="gallery-list__mask">
                    <ul></ul>
                  </div>
                  <div class="gallery-list__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                </div>
                <div class="gallery-desc">
                  <strong class="only-noto-kr">한반도 번영의 초석</strong>
                  <p>한반도 번영과 앞으로 다가올 통일경제 성장의 기반 역할을 할 철도, 도로, 통신, 전력, 수자원 등 북측 지역 인프라 개발에 탄탄한 국내사업 실적과 북측 사업권을 보유한 현대아산이 앞장서서 만들어 나가겠습니다.

개성공단·금강산 개발사업 및 경의선·동해선 철도·도로 연결 등 다양한 북측사업 실적은 물론 국내에서도 다양한 인프라 건설사업을 수행했던 경험을 바탕으로 다시 한번 길을 열어 나가겠습니다.</p>
                </div>
              </div>
              <!-- //gallery -->
            </div>
            <div class="overview">
              <div class="inner">
                <div class="heading">
                  <h4>개요</h4>
                  <em>현대그룹 정몽헌 회장은 2000년 8월 김정일 국방위원장과 면담을 통해 <br class="pc-br">북측의 SOC 및 기간산업의 개발, 건설, 운영 전반에 대한 사업권 합의</em>
                </div>
                <!-- //heading -->
                <div class="mobile-bxslider">
                  <ul class="clearfix">
                    <li class="item01">북측에서 시행되는 모든<br> 사회간접자본시설(SOC)과<br> 기간산업에 대한 사업권</li>
                    <li class="item02">현대 재원을 비롯한 남측과 제3국<br> 정부, 단체, 특정 기금, 국제기구<br> 지원자금 등을 통해 사업 수행</li>
                    <li class="item03">철도, 전력, 통신, 수자원 등 우선 시행<br> 추진 7대 사업권 추가 합의<br> (7대 개별 사업합의)</li>
                    <li class="item04">북측을 통과하는 남&middot;북&middot;러 천연가스<br> 수송사업으로 북측지역에 대한<br> 사업권 합의 (PNG 사업)</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="inner">
              <div class="major-business">
                <div class="heading">
                  <h4>주요 진행 사업</h4>
                </div>
                <!-- //heading -->
                <ul>
                  <li class="item01">
                    <strong>철도사업</strong>
                    <ul class="txt-list">
                      <li>남북철도(경의선, 경원선 및 금강산선), TCR, TSR 철도 연결을 위한 보수, 건설 및 운영 등 모든 철도 사업</li>
                      <li>2002년부터 경의선, 동해선 남북철도연결 사업 수행</li>
                    </ul>
                  </li>
                  <li class="item02">
                    <strong>전력사업</strong>
                    <ul class="txt-list">
                      <li>남북 간 송배전선 및 발전시설 건설을 통한 기존 전력 개선 및 증설 시행</li>
                    </ul>
                  </li>
                  <li class="item03">
                    <strong>통신사업</strong>
                    <ul class="txt-list">
                      <li>북측의 모든 유무선 통신사업 관련 시내&middot;외 전화망, 이동통신망, 데이터인터넷망 설치&middot;운영 등 모든 사업</li>
                      <li>통신망 관련 장비 및 소프트웨어 공동 개발</li>
                    </ul>
                  </li>
                  <li class="item04">
                    <strong>수자원사업</strong>
                    <ul class="txt-list">
                      <li>임진강 유역에 댐 건설 및 수자원 활용</li>
                      <li>금강산 수자원 남측으로 공급</li>
                    </ul>
                  </li>
                  <li class="item05">
                    <strong>통천비행장</strong>
                    <ul class="txt-list">
                      <li>금강산 ~ 원산 및 향후 백두산, 칠보산 등 연계 관광 교두보를 위한 비행장 건설</li>
                    </ul>
                  </li>
                  <li class="item06">
                    <strong>명승지 관광사업</strong>
                    <ul class="txt-list">
                      <li>백두산, 묘향산, 칠보산, 개성 등 북측 주요 명승지 개발 및 운영</li>
                    </ul>
                  </li>
                  <li class="item07">
                    <strong>PNG사업</strong>
                    <ul class="txt-list">
                      <li>남&middot;북&middot;러 간 러시아 천연가스 수송사업에 대해 북측지역의 사업권 보유 </li>
                    </ul>
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