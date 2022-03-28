<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="인재채용" scope="request"/>
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
          <div class="contents recruitment">
            <div class="inner">
              <div class="heading">
                <h3>인재채용</h3>
                <em>남북한의 미래를 이끌어갈 참신한 인재들의 도전을 기다립니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="/about/recruit/list">채용공고 및 안내</a>
                  <a href="/about/about_0502" >인재상</a>
                  <a href="/about/about_0503" class="current">인사제도</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <div class="heading">
                <h4>인사제도</h4>
                <p>우수 인재의 선발과 육성을 위해 직원의 능력과 성과에 따른 평가,<br class="pc-br"> 보상 등 객관적이고 투명한 인사제도를 운영하고 있습니다.</p>
              </div>
            </div>
            <div class="management">
               <div class="inner">
                  <div class="heading">
                    <h4>채용관리</h4>
                    <p>서류전형 및 실무진, 임원진 면접을 통한 체계적인 시스템을 운영하고 있습니다.</p>
                  </div>
                  <ol class="clearfix">
                    <li class="item01">STEP 1<p>서류전형</p></li>
                    <li class="item02">STEP 2<p>인/적성검사</p></li>
                    <li class="item03">STEP 3<p>실무면접(신입)</p></li>
                    <li class="item04">STEP 4<p>임원면접</p></li>
                    <li class="item05">STEP 5<p>신체검사</p></li>
                    <li class="item06">STEP 6<p>최종선발</p></li>
                  </ol>
               </div>
            </div>
            <div class="inner">
              <div class="heading">
                <h4>승진관리</h4>
                <p>일정 자격 요건 충족시 공정한 인사고과를 통한 승진관리를<br class="pc-br"> 실시함으로써 임직원들의 동기부여 및 성취감을 고취 시키고 있습니다.</p>
              </div>
              <div class="rank-system">
                <strong>직급체계</strong>
                <div class="img-wrap">
                  <img src="/resources/images/about/img_about_0503_01-pc.png" alt="" class="pc-img">
                  <img src="/resources/images/about/img_about_0503_01-mobile.png" alt="" class="mobile-img">
                  <div class="hide-element">
                    사원4년, 대리 4년, 과장 5년, 차장 4년, 부장대우 3년, 부장
                  </div>
                  <p>※대졸 신입 기준 표준년한</p>
                </div>
              </div>
            </div>
            <div class="welfare">
               <div class="inner">
                  <div class="heading">
                    <h4>복지제도</h4>
                    <p>모든 임직원이 안정적인 생활 기반 위에 행복을 추구할 수 있도록 다양한 복지 제도를 운영하고 있습니다.</p>
                  </div>
                  <ul class="clearfix">
                    <li class="item01">수업료 지원<span>중&middot;고&middot;대학생 자녀 입학금 및 수업료 지원</span></li>
                    <li class="item02">건강검진 지원<span>임직원 및 배우자 종합건강검진 지원</span></li>
                    <li class="item03">대출제도 운영<span>주택자금 및 생활 안정 자금 대출제도 운영</span></li>
                    <li class="item04">복지카드<span>직원들의 다양한 욕구 충족을 위한 복지카드<br> (카페테리아식 복리 후생)제도 운영</span></li>
                    <li class="item05">통근버스 운영<span>직원 출퇴근을 위한 통근버스 제도 운영</span></li>
                    <li class="item06">사내 동호회<span>동호회를 통한 즐거운 직장문화 조성</span></li>
                  </ul>
               </div>
            </div>
            <div class="inner education-system">
              <div class="heading">
                <h4>교육제도</h4>
                <p>변화를 주도하고 가치 창출에 기여하는 창의적인 인재양성을 위하여 체계적이고 실질적인 교육 체계를 바탕으로 임직원의<br class="pc-br"> 지적 욕구 해소, 직무 역량 강화를 위해 다양한 프로그램을 운영하고 있습니다.</p>
              </div>
              <div class="mobile-bxslider">
                <ul class="clearfix img-list">
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0503_01.jpg" alt="">
                    </div>
                    <p>
                      <strong>리더쉽 교육</strong>
                      주도적인 인재양성을 위해<br>
                      각 직급별 리더쉽 기본 과정과<br>
                      심화 과정 실시
                    </p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0503_02.jpg" alt="">
                    </div>
                    <p>
                      <strong>전문가 양성교육</strong>
                      해당 직무나 분야별 전문가를<br>
                      양성하기 위해 다양한 교육과정을<br>
                      선택하여 전문기관에 위탁
                    </p>
                  </li>
                  <li>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0503_03.jpg" alt="">
                    </div>
                    <p>
                      <strong>자기계발 교육</strong>
                      직원 개개인의 적극적인 자기계발<br>
                      지원을 위해 직무역량교육,<br>
                      온라인교육 등 각종 교육실시
                    </p>
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