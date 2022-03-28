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
            </div>
            <div class="mobile-swiper--link">
              <div class="inner">
                <div class="mobile-swiper">
                  <div class="swiper-wrapper col05">
                    <a href="/industry/industry_soc_0101" class="swiper-slide ">사업개요</a>
                    <a href="/industry/industry_soc_0102" class="swiper-slide current">공단역사</a>
                    <a href="/industry/industry_soc_0103" class="swiper-slide">개발계획</a>
                    <a href="/industry/industry_soc_0104" class="swiper-slide">사업구도</a>
                    <a href="/industry/industry_soc_0105" class="swiper-slide">추진현황</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper--link -->
            <div class="inner">
              <div class="tab col03">
                <a href="/" class="active">2008 ~ 현재</a>
                <a href="/">2005 ~ 2007</a>
                <a href="/">1989 ~ 2004</a>
              </div>
              <div class="tab-content history">
                <div>
                  <div class="item right-start">                  
                    <strong>2016</strong>
                    <div>
                      <b class="point-color01">02.</b>
                      개성공업지구 전면중단
                    </div>
                  </div>
                  <div class="item left-start">                  
                    <strong>2015</strong>
                    <div>
                      <b class="point-color01">08.</b>
                      개성공업지구 누적생산액 30억달러 돌파
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>2013</strong>
                    <div>
                      <b class="point-color01">09.</b>
                      개성공업지구 재가동(2013년 4월 중단)
                    </div>
                    <div>
                      <b class="point-color01">01.</b>
                      개성공업지구 누적 생산액 20억달러 돌파
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>2012</strong>
                    <div>
                      <b class="point-color01">10.</b>
                      폐기물 2차 소각장 착공
                    </div>
                    <div>
                      <b class="point-color01">01.</b>
                      북측근로자 5만명 돌파
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>2011</strong>
                    <div>
                      <b class="point-color01">11.</b>
                      개성공업지구 소방서 착공
                    </div>
                    <div>
                      <b class="point-color01">09.</b>
                      공단 출퇴근버스 통합 운영
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>2010</strong>
                    <div>
                      <b class="point-color01">09.</b>
                      개성공업지구 누적생산액 10억달러 돌파
                    </div>
                    <div>
                      <b class="point-color01">01.</b>
                      개성공업지구 종합지원센터 준공
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>2009</strong>
                    <div>
                      <b class="point-color01">05. 30</b>
                      개성공업지구 생산액 6억 달러 돌파
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2008</strong>
                    <div>
                      <b class="point-color01">07. 04</b>
                      북측근로자 3만명 돌파
                    </div>
                  </div>
                </div>
                <div>
                  <div class="item right-start">
                    <strong>2007</strong>
                    <div>
                      <b class="point-color01">12. 21</b>
                      경제협력협의사무소 준공
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_12.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">12. 20</b>
                      개성한누리호텔 착공
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_11.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">12. 17</b>
                      개성공업지구 2단계 측량 및<br>지질조사 착수
                    </div>
                    <div>
                      <b class="point-color01">12. 05</b>
                      개성관광 시작
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_10.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">11. 30</b>
                      기술교육센터 준공
                    </div>
                    <div>
                      <b class="point-color01">11. 22</b>
                      폐수종말처리장 준공
                    </div>
                    <div>
                      <b class="point-color01">10. 23</b>
                      산단공 아파트형공장 준공
                    </div>
                    <div>
                      <b class="point-color01">10. 16</b>
                      개성공업지구 1단계 조성공사 준공
                    </div>
                    <div>
                      <b class="point-color01">06. 21</b>
                      개성변전소 준공
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2006</strong>
                    <div>
                      <b class="point-color01">05. 17</b>
                      산단공 아파트공장 기공식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_09.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">03. 28</b>
                      정배수장 착공식
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2005</strong>
                    <div>
                      <b class="point-color01">12. 28</b>
                      KT 개소식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_08.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">11. 18</b>
                      개성연결도로 개통기념식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_07.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">10. 28</b>
                      경협사무소 개소식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_06.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">03. 16</b>
                      개성공업지구 내 전력공급(15,000kw)
                    </div>
                  </div>
                </div>
                <div>
                  <div class="item right-start">
                    <strong>2004</strong>
                    <div>
                      <b class="point-color01">12. 28</b>
                      에스제이테크 개성공장 준공식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_05.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">12. 15</b>
                      개성공업지구 첫제품 생산식<br>(리빙아트 개성공장 준공)
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_04.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">09. 14</b>
                      시범단지 공장건축 착공
                    </div>
                    <div>
                      <b class="point-color01">06. 30</b>
                      시범단지 28,000평 부지조성공사 준공
                    </div>
                    <div>
                      <b class="point-color01">04. 23</b>
                      공단 1단계 100만평 조성공사 착수
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2003</strong>
                    <div>
                      <b class="point-color01">12. 22</b>
                      현대아산 개성사무소 개소
                    </div>
                    <div>
                      <b class="point-color01">08. 25</b>
                      중소기업협동조합중앙회 대표단<br calss="pc-br">개성 방문
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_03.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">06. 30</b>
                      개성공업지구 착공식
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_02.jpg" alt="">
                      </div>
                    </div>
                    <div>
                      <b class="point-color01">02. 21</b>
                      개성공업지구 육로답사 최초 실시<br>(경의선 임시도로 이용)
                      <div class="img-wrap">
                        <img src="/resources/images/industry_soc/img_industry_soc_0102_01.jpg" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2002</strong>
                    <div>
                      <b class="point-color01">12. 26</b>
                      개성공업지구 2000만평 토지이용증 취득(50년간)
                    </div>
                    <div>
                      <b class="point-color01">11. 27</b>
                      북측 개성공업지구법 공표
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>2000</strong>
                    <div>
                      <b class="point-color01">08. 22</b>
                      공업지구 건설운영에 관한 합의서 체결
                    </div>
                  </div>
                  <div class="item right-start">
                    <strong>1998</strong>
                    <div>
                      <b class="point-color01">06. 16</b>
                      정주영 명예회장 소떼 500마리와 함께 육로 방북
                    </div>
                  </div>
                  <div class="item left-start">
                    <strong>1989</strong>
                    <div>
                      <b class="point-color01">01. 24</b>
                      정주영 명예회장 최초로 평양을 방문하여 남북경제협력의정서 체결
                    </div>
                  </div>
                </div>
              </div>
              <!-- //tab + tab-content -->
            </div>
          </div>
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