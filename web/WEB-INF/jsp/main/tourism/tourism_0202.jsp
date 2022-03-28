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
                  <a href="./tourism_0201">크루즈</a>
                  <a href="./tourism_0202" class="current">일반관광</a>
                  <a href="./tourism_0203">MICE</a>
                </div>
              </div>
            </div>
            
            <div class="inner">
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/tourism/tourism_0202_gallery_01.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0202_gallery_02.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0202_gallery_03.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0202_gallery_04.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0202_gallery_05.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0202_gallery_06.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>현대아산 테마 패키지</p>
                    <p>영국투어</p>
                    <p>베트남투어</p>
                    <p>프랑스투어</p>
                    <p>일본투어</p>
                    <p>중국투어</p>
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
                  <strong class="only-noto-kr">해외 여행</strong>
                  <p>현대아산의 해외여행은 정부기관·법인의 해외 출장 관리대행, 해외 연수 진행, 일반 여행 알선과 항공발권 등의 사업으로 이루어지고 있습니다.<br><br>
                    이를 바탕으로 대북관광과 현대아산만의 해외관광 프로그램의 시너지를 통해 종합여행기업 구축을 위해 노력하겠습니다.</p>
                  <div class="button-wrap align-left">
                    <a href="http://www.hdasantour.com/web/sub/abroad00.php" target="_blank" class="button01">상품 둘러보기</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //gallery -->

            <div class="type-travel">
              <div class="inner">
                <div class="heading">
                  <h4>해외여행 관련 서비스</h4>
                </div>
                <ul class="ico-travel">
                  <li>
                    <div>
                      <strong>해외출장 관리 대행 사업</strong>
                      <p>정부기관·기업들의 해외출장에 대한 항공권, <br>호텔, 보험 등의 예약 대행 서비스</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>해외 연수 진행</strong>
                      <p>발주처의 요구에 맞는 해외연수 프로그램의 <br>개발과 알선 진행</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>해외여행 알선</strong>
                      <p>현대아산에 맞는 특화지역 여행 프로그램 개발과 판매</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>항공발권</strong>
                      <p>2017년 기준 연간 114억 발권으로 안정적인 항공권 <br>예약·발권 업무 진행</p>
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
                  <caption class="hide-element">주요 진행 사업 사업명, 연도, 추진내용 정보</caption>
                  <colgroup>
                    <col style="width: 200px;">
                    <col style="width: 200px;">
                    <col style="width: auto">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col">사업명</th>
                      <th scope="col">연도</th>
                      <th scope="col">추진내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th rowspan="3" scope="rowgroup">해외 출장 계약</th>
                      <td><b>2018</b></td>
                      <td class="align-left">인천공항공사, 국토연구원, 사할린 모국방문단</td>
                    </tr>
                    <tr>
                      <td><b>2017</b></td>
                      <td class="align-left">지구촌 새마을운동, 사할린 모국방문단, 삼일회계법인</td>
                    </tr>
                    <tr>
                      <td><b>2016</b></td>
                      <td class="align-left">세종학당, 언론진흥재단, 해외건설협회</td>
                    </tr>
                  </tbody>
                  <tbody>
                    <tr>
                      <th rowspan="3" scope="rowgroup">해외 연수 행사</th>
                      <td><b>2018</b></td>
                      <td class="align-left">통일교육원 통일리더캠프(해외), 대진대·경남대 중러 국경지역 답사</td>
                    </tr>
                    <tr>
                      <td><b>2017</b></td>
                      <td class="align-left">경기도청</td>
                    </tr>
                    <tr>
                      <td><b>2016</b></td>
                      <td class="align-left">중앙일보 평화 오디세이</td>
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