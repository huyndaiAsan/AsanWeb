<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="연혁" scope="request"/>
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
          <div class="contents history">
            <div class="inner">
              <div class="heading">
                <h3>연혁</h3>
                <em>현대아산이 걸어온 길, 신화를 만들어 갑니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="./about_0201" >현재 ~ 2011</a>
                  <a href="./about_0202" class="current">2010 ~ 2005</a>
                  <a href="./about_0203">2004 ~ 1998</a>
                </div>
              </div>
            </div>
            <div class="history-wrap">
              <div class="inner">
                <div class="item">
                  <div class="item__inner">
                    <strong>2010</strong>
                    <ul>
                      <li><span>10</span>도시형 생활주택 ‘현대웰하임’ 착공(민간주택시장 진출)</li>
                      <li><span>06</span>엘살바도르 채소재배 기자재 지원 용역사업수주<br>(KOICA 국제협력사업 참여)</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_06.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2009</strong>
                    <ul>
                      <li><span>05</span>현대 PLZ 평화생태체험 관광 개시</li>
                      <li><span>02</span>현대아산 창립 10주년</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_05.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2008</strong>
                    <ul>
                      <li><span>10</span>개성관광 10만명 돌파</li>
                      <li><span>05</span>금강산비로봉 답사</li>
                      <li><span>03</span>승용차 관광 실시</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_04.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2007</strong>
                    <ul>
                      <li><span>12</span>개성관광 실시</li>
                      <li><span>05</span>내금강 관광 실시</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_03.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2006</strong>
                    <ul>
                      <li><span>08</span>금강산 외금강호텔 개관</li>
                      <li><span>07</span>화진포아산휴게소 개장</li>
                      <li><span>05</span>금강산 내금강 답사</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_02.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2005</strong>
                    <ul>
                      <li><span>11</span>금강산 관광 7돌</li>
                      <li><span>08</span>개성시범관광 실시</li>
                      <li><span>06</span>금강산 관광객 100만 돌파</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0202_01.jpg" alt="">
                    </div>
                  </div>
                </div>
                <span class="point-line"></span>
              </div>
            </div>
            <!-- //link-tab -->
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