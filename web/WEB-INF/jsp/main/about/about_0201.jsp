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
                  <a href="javascript:void(0);" class="current">현재 ~ 2011</a>
                  <a href="./about_0202">2010 ~ 2005</a>
                  <a href="./about_0203">2004 ~ 1998</a>
                </div>
              </div>
            </div>
            <div class="history-wrap">
              <div class="inner">
                <div class="item">
                  <div class="item__inner">
                    <strong>2018</strong>
                    <ul>
                      <li><span>08</span>21차 이산가족 상봉</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_06.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2017</strong>
                    <ul>
                      <li><span>10</span>한-일 크루즈  전세선 운항</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_05.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2016</strong>
                    <ul>
                      <li><span>12</span>선상면세점 화동페리 추가오픈</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_04.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2015</strong>
                    <ul>
                      <li><span>10</span>20차 이산가족상봉 금강산개최 (2002년부터 총 17회)</li>
                      <li><span>02</span>'열려라! 금강산' 슬로건 선포</li>
                      <li><span>01</span>현대면세점 개성2호점 개장 </li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_03.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2014</strong>
                    <ul>
                      <li><span>11</span>금강산관광 16주년 기념식</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_02.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="item__inner">
                    <strong>2011</strong>
                    <ul>
                      <li><span>08</span>양양면세점 오픈</li>
                    </ul>
                    <div class="img-wrap">
                      <img src="/resources/images/about/img_about_0201_01.jpg" alt="">
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