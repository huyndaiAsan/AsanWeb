<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="국내외 관광" scope="request"/>
<c:set var="CLASS" value="tourism" scope="request"/>
<c:set var="MENUNM" value="관광사업" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/tourism.css">
<style type="text/css">
</style>
</head>
  <body class="tourism">
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
          <div class="contents type-inoutside">
            <div class="inner">
              <div class="heading">
                <h3>국내외 관광</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
            </div>

            <!-- //heading -->
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="/tourism/tourism_0201" class="current">크루즈</a>
                  <a href="/tourism/tourism_0202">일반관광</a>
                  <a href="/tourism/tourism_0203">MICE</a>
                </div>
              </div>
            </div>
            <div class="inner">
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/tourism/tourism_0201_gallery_01.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0201_gallery_02.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0201_gallery_03.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0201_gallery_04.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0201_gallery_05.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0201_gallery_06.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>Costa NeoRomantica</p>
                    <p>Costa NeoRomantica</p>
                    <p>Costa NeoRomantica</p>
                    <p>Costa NeoRomantica</p>
                    <p>Costa Victoria</p>
                    <p>CPP Cruise 2018부산</p>
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
                  <strong class="only-noto-kr">바다 위 또 하나의 세상</strong>
                  <p>현대아산의 크루즈 관광은 크루즈 전문 인력들로 구성, 전세계 유명 선사들과 직접적인 업무 제휴를 통해 크루즈 상품 기획에서 행사 진행까지 크루즈 행사에 차별화된 서비스를 제공합니다. 2017년 7월 유럽 최대 선사 코스타 크루즈社의 초대형 크루즈 ‘코스타 빅토리아호’ 를 용선, ‘한-일 크루즈 여행상품’을 운영하면서 크루즈 사업에 진출했습니다.<br><br>
                    현대아산은 국내에 생소한 크루즈 여행을 차별화된 서비스로 대중화하는 계기를 만들고, 가족여행의 새로운 지평을 열었다는 높은 평가를 받고 있습니다.</p>
                  <div class="button-wrap align-left">
                    <a href="http://www.hdasantour.com/web/sub/cruise.php" target="_blank" class="button01">상품 둘러보기</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //gallery -->

            <div class="type-cruise">
              <div class="inner">
                <div class="heading">
                  <h4>크루즈 관련 서비스</h4>
                </div>
                <ul class="ico-cruise">
                  <li class="n1">
                    <div>
                      <strong>용선 사업</strong>
                      <p>전세계 메이저 선사와의 제휴를 통한 크루즈 용선사업 진행</p>
                    </div>
                  </li>
                  <li class="n2">
                    <div>
                      <strong>크루즈 행사 기획 및 운영</strong>
                      <p>기업체, 인센티브 크루즈 및 테마 크루즈 행사 기획 및 운영</p>
                    </div>
                  </li>
                  <li class="n3">
                    <div>
                      <strong>크루즈 관련 사업 컨설팅</strong>
                      <p>크루즈 운영 컨설팅 및 운영 지원, 상품 교육, 사업 모델 설계</p>
                    </div>
                  </li>
                  <li class="n4">
                    <div>
                      <strong>크루즈 연계 상품 기획 및 운영</strong>
                      <p>기항지 상품 개발 및 운영 </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <!-- //overview -->

            <div class="inner">
              <div class="heading">
                <h4>주요 진행 사업</h4>
              </div>
              <div class="table01">
                <table>
                  <caption class="hide-element">주요 진행 사업 연도, 추진내용 정보</caption>
                  <colgroup>
                    <col style="width: 408px;">
                    <col style="width: auto">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col">연도</th>
                      <th scope="col">추진내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">2018.04</th>
                      <td class="align-left">
                        <ul class="list-dot">
                        <li>Costa NeoRomantica호 용선 및 상품공급, 크루즈항 및 선내 운영 컨설팅, 지원</li>
                        <li>아시아 최초 컬러테마 크루즈 행사 진행 (당사 후원, 부산시 주최)</li>
                        </ul>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2017.08</th>
                      <td class="align-left">
                        <p class="list-dot">Costa Victoria호 용선 및 상품 공급, 테마크루즈 (포르테디콰트로 크루즈) 진행</p>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2017.07</th>
                      <td class="align-left">
                        <ul class="list-dot">
                        <li>Costa Victoria호 용선 및 상품 공급, 테마크루즈 (김완선 공연) 진행</li>
                        <li>기항지 관광 상품 기획 및 진행</li>
                        </ul>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">1998.11</th>
                      <td class="align-left">
                        <p class="list-dot">금강산 크루즈 금강호 취항</p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- //table01 -->
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