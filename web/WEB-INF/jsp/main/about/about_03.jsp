<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="CEO 인사말" scope="request"/>
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
          <div class="contents ceo">
            <div class="inner">
              <div class="heading">
                <h3>CEO 인사말</h3>
                <em>남북경협 선도기업으로서 평화와 번영의 밝은 미래를 이끌겠습니다.</em>
              </div>
              <!-- //heading -->
              <div class="img-wrap">
                <img src="/resources/images/about/img_about_03_01.jpg" alt="ceo사진" style="margin-bottom:40px;">
                <em>현대아산은 1999년 창립하여<!-- br class="pc-br" --><br /> <span class="point-color01">남북경협이라는 남들이 가지 않은 길을 개척한 선도적<br class="pc-br"> 
				기업</span>입니다.</em>

                <em>금강산관광, 개성관광, 개성공단 건설 등 굵직굵직한 남북경협사업을 통해 화해와 한반도의 평화를 정착시키는데 기여해 왔습니다.</em>

                <p>그러나 남북관계의 상황에 따라 사업이 중단되는 등 어려움도 겪었습니다.</p>

                <p>현대아산은 시련과 아픔 속에서도 통일의 초석을 다진다는 일념과 사명으로 미래를 준비해 왔습니다.</p>

				<p>현대아산은 북측과의 깊은 신뢰를 바탕으로 합의된 대북 SOC사업권을 가지고 있습니다.</p>

				<p>남북경협사업이 재개될 경우 철도, 전력, 통신, 수자원, 공단개발, 명승지 관광개발 등 대규모 개발 사업을 주도적으로 추진하게 될 것입니다.</p>

				<p>여러분들의 깊은 관심과 사랑을 부탁드립니다.</p>
				<div>
					<div class="align-right">
					  <span class="point-color01 mr-ceo">현대아산주식회사</span>
					  <p>대표이사 사장<span>배 국 환</span></p>
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