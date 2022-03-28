<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="면세사업" scope="request"/>
<c:set var="CLASS" value="taxfree_oda" scope="request"/>
<c:set var="MENUNM" value="면세&middot;ODA" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/taxfree_oda.css">
<style type="text/css">
</style>
</head>
  <body class="taxfree_oda">
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
                <h3>면세사업</h3>
                <em>즐거운 여행을 위한 기분 좋은 쇼핑</em>
              </div>
              <!-- //heading -->
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_01_gallery_02.jpg" alt="">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_01_gallery_03.jpg" alt="">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_01_gallery_04.jpg" alt="">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_01_gallery_05.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>개성 면세점</p>
                    <p>위동훼리 선상 면세점</p>
                    <p>금강산 온정각 면세점</p>
                    <p>양양국제공항 면세점</p>
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
                  <strong class="only-noto-kr">HYUNDAI DUTY FREE</strong>
                  <p>금강산&middot;개성 면세점 운영경험을 바탕으로, 양양국제공항 면세점을 운영 하였고, 현재는 한-중 페리인 위동훼리(청도, 위해), 화동훼리(석도), 연운항훼리(연운항), 단동훼리(단동)에 선상면세점을 운영하고 있습니다.</p>
                  <p>현대면세점은 국내외 다양한 유명브랜드 상품을 구비하고, 전문 판매원이 상시 배치되어 훼리를 이용하는 고객들께 풍요로운 쇼핑의 즐거움을 제공하고 있습니다.</p>
                </div>
              </div>
              <!-- //gallery -->
              <div class="heading">
                <h4>면세점 안내</h4>
              </div>
              <div class="table01 pc-table">
                <table>
                  <caption class="hide-element">면세점 안내(면세점, 위치, 운영기간, 취급품목)</caption>
                  <colgroup>
                    <col style="width: 295px;">
                    <col style="width: 295px">
                    <col style="width: 205px">
                    <col style="width: auto">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col">면세점</th>
                      <th scope="col">위치</th>
                      <th scope="col">운영기간</th>
                      <th scope="col">취급품목</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>금강&middot;설봉&middot;봉래&middot;풍악호 면세점</td>
                      <td>선박 내</td>
                      <td>1999 ~ 2004</td>
                      <td rowspan="6">주류, 담배, 잡화, 기념품, 악세서리, 화장품 등</td>
                    </tr>
                    <tr>
                      <td>해금강호텔 면세점</td>
                      <td>해금강호텔</td>
                      <td>2000 ~ 2007</td>
                    </tr>
                    <tr>
                      <td>온정각 면세점</td>
                      <td>금강산 온정리 온정각</td>
                      <td>1999 ~ 2007</td>
                    </tr>
                    <tr>
                      <td>개성면세점</td>
                      <td>개성공업지구 송악프라자</td>
                      <td>2008 ~ 현 재</td>
                    </tr>
                    <tr>
                      <td>양양면세점</td>
                      <td>양양국제공항</td>
                      <td>2011 ~ 2014</td>
                    </tr>
                    <tr>
                      <td>위동&middot;화동&middot;연운항 훼리면세점</td>
                      <td>선박 내</td>
                      <td>2012 ~ 현 재</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- //table01 -->
              <div class="table01 mobile-table">
                <table>
                  <caption class="hide-element">면세점 안내</caption>
                  <colgroup>
                    <col style="width: 26%;">
                    <col style="width: auto">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">금강&middot;설봉&middot;봉래&middot;풍악호 면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>선박 내</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>1999 ~ 2004</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">해금강호텔 면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>해금강호텔</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>2000 ~ 2007</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">온정각 면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>금강산 온정리 온정각</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>1999 ~ 2007</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">개성면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>개성공업지구 송악프라자</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>2008 ~ 현 재</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">양양면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>양양국제공항</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>2011 ~ 2014</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">위동&middot;화동&middot;연운항 훼리면세점</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">위치</th>
                      <td>선박 내</td>
                    </tr>
                    <tr>
                      <th scope="row">운영기간</th>
                      <td>2012 ~ 현재</td>
                    </tr>
                  </tbody>
                  <thead>
                    <tr>
                      <th scope="col" colspan="2">취급품목</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td colspan="2">주류, 담배, 잡화, 기념품, 악세서리, 화장품 등</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- //table01 -->
              <div class="heading">
                <h4>선상면세점 운영노선 안내</h4>
              </div>
              <div class="operation-course clearfix">
                <div class="img-wrap">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_01_01.jpg" alt="">
                  <p>
                    <i>※</i>
                    <span>인천1항 6개 노선 중 2개, 인천2항 4개노선 중 3개노선</span>
                    <span>인천1항 : 단동, 석도</span>
                    <span>인천2항 : 위해, 청도, 연운항</span>
                  </p>
                </div>
                <div class="table01">
                  <table>
                    <caption class="hide-element">선상면세점 운영노선 안내(선사, 노선, 홈페이지)</caption>
                    <colgroup>
                      <col style="width: 33.3%;">
                      <col style="width: 33.3%">
                      <col style="width: auto">
                    </colgroup>
                    <thead>
                      <tr>
                        <th scope="col">선사</th>
                        <th scope="col">노선</th>
                        <th scope="col">홈페이지</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td rowspan="2">위동항운</td>
                        <td>인천 ↔ 위해</td>
                        <td rowspan="2">
                          <div class="button-wrap">
                            <a href="http://www.weidong.com" target="_blank" class="button01">바로가기</a>
                          </div>
                        </td> 
                      </tr>
                      <tr>
                        <td>인천 ↔ 청도</td>
                      </tr>
                      <tr>
                        <td>화동해운</td>
                        <td>인천 ↔ 석도</td>
                        <td>
                          <div class="button-wrap">
                            <a href="http://www.huadong.co.kr" target="_blank" class="button01">바로가기</a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>단동국제항운</td>
                        <td>인천 ↔ 단동</td>
                        <td>
                          <div class="button-wrap">
                            <a href="http://www.dandongferry.co.kr" target="_blank" class="button01">바로가기</a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>연운항훼리</td>
                        <td>인천 ↔ 연운항</td>
                        <td>
                          <div class="button-wrap">
                            <a href="http://www.lygferry.com" target="_blank" class="button01">바로가기</a>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <!-- //table01 -->
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