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
          <div class="contents">
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
                  <a href="/about/about_0502" class="current">인재상</a>
                  <a href="/about/about_0503">인사제도</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="right-people--intro">
              <div class="inner">
                <div class="heading">
                  <h4>이어달리기를 해보셨나요?</h4>
                </div>
                <p>앞사람의 노력이 깃든 배턴을 건네받고 온 힘을 다해 달린 내 배턴을 다음 사람에게 건넵니다.<br>이렇게 서로 힘을 모아 열심히 달리면 더 큰 우승의 기쁨이 기다리고 있습니다.<br>현대아산은 민족 화합의 새 시대를 이끌어갈 성실한 인재를 기다립니다.</p>
              </div>
            </div>
            <div class="inner right-people">
              <div class="right-people__row">
                <img src="/resources/images/about/img_about_0502_01.png" alt="">
                <strong>전문성을 갖춘 <span class="point-color01">창의적 인재</span></strong>
                <p class="point-color01">전문성, 긍정적 사고, 창조성, 역량극대화</p>
                <p>부단한 자기계발로 전문성 강화에 노력하며, 유연하고 독창적인 사고로 변화를 주도하는 창의적인 인재</p>
              </div>
              <div class="right-people__row">
                <img src="/resources/images/about/img_about_0502_02.png" alt="">
                <strong>미래를 선도하는 <span class="point-color01">진취적인 인재</span></strong>
                <p class="point-color01">긍지와 열정, 국가/사회 공헌, 도전정신, 적극의지, 강인한 추진력</p>
                <p>민족화합의 새로운 길을 여는 주역으로서의 강한 자부심과 열정, 그리고 어떠한 난관이 있어도 사명감을 갖고 이를 극복하려는 강한 도전의식을 갖춘 인재</p>
              </div>
              <div class="right-people__row">
                <img src="/resources/images/about/img_about_0502_03.png" alt="">
                <strong>도덕성을 갖춘 <span class="point-color01">성실한 인재</span></strong>
                <p class="point-color01">근면, 검소, 정직, 예의, 성실, 사랑</p>
                <p>올바른 가치관과 윤리의식을 갖추고 사회와 고객, 이웃과 환경을 먼저 생각하는 따뜻한 마음을 가진 성실한 인재</p>
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