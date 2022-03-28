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
                  <a href="./about_0202" >2010 ~ 2005</a>
                  <a href="./about_0203" class="current">2004 ~ 1998</a>
                </div>
              </div>
            </div>
            <div class="history-wrap">
              <div class="inner">
                <div class="item">
                  <div class="item__inner">
                    <strong>2004</strong>
                    <ul>
                      <li><span>07</span>금강산 당일관광, 1박2일 관광 개시</li>
                      <li><span>06</span>개성공단 시범단지 준공</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_07.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2003</strong>
                    <ul>
                      <li><span>10</span>류경 정주영 체육관 개관</li>
                      <li><span>09</span>금강산 육로 관광 개시</li>
                      <li><span>06</span>개성공업지구 착공</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_06.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2002</strong>
                    <ul>
                      <li><span>11</span>금강산, 개성 특구법 채택</li>
                      <li><span>09</span>경의선 동해선 철도·도로 연결 착공</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_05.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2000</strong>
                    <ul>
                      <li><span>08</span>금강산&middot;개성 특구 지정 및 SOC사업권 합의</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_04.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>1999</strong>
                    <ul>
                      <li><span>02</span>현대아산㈜ 창립</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_03.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>1998</strong>
                    <ul>
                      <li><span>11</span>금강산 관광선 ‘금강호’ 첫 출항</li>
                      <li><span>10</span>금강산 관광사업에 관한 합의서 체결</li>
                      <li><span>06</span>故 정주영 회장 소떼 방북</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_02.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>1989</strong>
                    <ul>
                      <li><span>01</span>故 정주영 회장 방북, 금강산관광 의정서 체결</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0203_01.jpg" alt="">
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