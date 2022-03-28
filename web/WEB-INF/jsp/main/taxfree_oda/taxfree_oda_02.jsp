<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="ODA용역" scope="request"/>
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
                <h3>ODA용역</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
              <!-- //heading -->
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_gallery_01.jpg" alt="">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_gallery_02.jpg" alt="">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_gallery_03.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>우간다</p>
                    <p>앙골라</p>
                    <p>튀니지</p>
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
                  <strong class="only-noto-kr">새로운 협력의 장</strong>
                  <p>현대아산은 다년간 축적된 물류&middot;용역&middot;인도적 지원 사업의 노하우를 활용해 2010년부터 KOICA(한국국제협력단)가 주관하는 ODA사업에 진출, 남미&middot;아프리카&middot;아시아 등지의 개발도상국 원조사업을 진행하며, ODA 전문기업으로서 면모를 갖춰 나가고 있습니다.</p>
                </div>
              </div>
              <!-- //gallery -->
              <div class="heading oda-business">
                <h4>주요 진행 사업</h4>
                <em>ODA사업 현황(24개국, 47건) - 구매27건, PMC 17건, EDCF 3건</em>
              </div>
            </div>
            <div class="mobile-swiper--tab">
              <div class="inner">
                <div class="mobile-swiper">
                  <div class="swiper-wrapper col06">
                    <a href="/" class="swiper-slide active">남아메리카</a>
                    <a href="/" class="swiper-slide">아프리카</a>
                    <a href="/" class="swiper-slide">중동</a>
                    <a href="/" class="swiper-slide">아시아</a>
                    <a href="/" class="swiper-slide">오세아니아</a>
                    <a href="/" class="swiper-slide">전체</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper-tab -->
            <div class="inner">
              <div class="tab-content">
                <div class="oda-tab--item01">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_01-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_01-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">엘살바도르</p>
                        <p>엘살바도르 채소재배 기자재 지원사업 기자재 공급</p>
                        <p>10.06 ~ 10.09</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">에콰도르</p>
                        <p>짐바브웨&middot;에콰도르 농어촌개발사업 초청연수</p>
                        <p>10.10 ~ 11.08</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country03">볼리비아</p>
                        <p>볼리비아 고원지역 건강증진 및 삶의 질 향상 프로그램 PMC</p>
                        <p>17.12 ~ 22.10</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country04">파라과이</p>
                        <p>파라과이 보건의료체계 형성 및 일차의료 강화사업 PM</p>
                        <p>16.12 ~ 22.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country05">도미니카</p>
                        <p>도미니카공화국 여성의료환경 개선 기자재 공급</p>
                        <p>10.06 ~ 11.12</p>
                        <p>구매</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="oda-tab--item02">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_02-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_02-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">알제리</p>
                        <p>알제리 사하라 사막 새우양식연구센터 건립 PMC</p>
                        <p>10.12~14.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country01">알제리</p>
                        <p>알제리 새우양식장 건설 및 양식기술이전사업 사후관리</p>
                        <p>13.07~13.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country02">가나</p>
                        <p>가나 아크라 직업훈련원 기자재 공급</p>
                        <p>11.11~12.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country03">DR 콩고</p>
                        <p>DR콩고 추엔게 농촌개발사업 PMC수행 및 초청연수</p>
                        <p>10.12~13.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country04">알골라</p>
                        <p>앙골라 수산자원조성기술 역량강화사업 PMC 용역</p>
                        <p>14.01~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country05">튀니지</p>
                        <p>튀니지 코르크참나무숲 복원 시범사업 BDS용역</p>
                        <p>12.12~13.05</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country06">수단</p>
                        <p>수단 농업기술훈련원 건립사업 기자재 공급</p>
                        <p>16.01~16.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country07">에티오피아</p>
                        <p>에티오피아 아디스아바바 결핵예방퇴치사업 기자재 공급</p>
                        <p>12.07~13.07</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">탄자니아</p>
                        <p>탄자니아 농산물가공훈련센터 건립 2개사업 기자재 공급</p>
                        <p>10.12~11.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country09">우간다</p>
                        <p>우간다 과일가공공장 건립사업 기본설계조사 용역</p>
                        <p>11.06~12.04</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country10">짐바브웨</p>
                        <p>짐바브웨 농기계시험평가센터 지원사업 기자재 공급</p>
                        <p>10.12~11.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country10">짐바브웨</p>
                        <p>짐바브웨, 에콰도르 농어촌개발사업 초청연수 및 전문가 파견 용역</p>
                        <p>10.10~11.08</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country10">짐바브웨</p>
                        <p>짐바브웨 태양열 온수시스템 설치사업</p>
                        <p>11.12~12.12</p>
                        <p>PMC</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="oda-tab--item03">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_03-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_03-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">레바논</p>
                        <p>레바논 원예작물 수확후 관리기술 지원사업 기자재 공급</p>
                        <p>17.03~18.01</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">이라크</p>
                        <p>이라크 남부 4개주 직업훈련원 기자재 공급</p>
                        <p>12.12~14.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">이라크</p>
                        <p>이라크 바스라 이동진료팀 구축사업 PMC용역</p>
                        <p>11.05~14.03</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country03">아프가니스탄</p>
                        <p>한-아프간 직업훈련원 건립사업 사후관리 기자재 공급</p>
                        <p>13.12~13.12</p>
                        <p>구매</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="oda-tab--item04">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_04-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_04-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">방글라데시</p>
                        <p>방글라데시 치타공 직업훈련원 역량강화사업 기자재 공급</p>
                        <p>13.02~13.10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country01">방글라데시</p>
                        <p>방글라데시 화학산업기술훈련원 역량강화사업 기자재 공급</p>
                        <p>18.04~10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">미얀마</p>
                        <p>미얀마 북부 관개역량 강화사업 사후관리 물품지원</p>
                        <p>11.03~11.05</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">미얀마</p>
                        <p>미얀마 농산물 수확후 관리기술 연구소 설립사업 기자재 공급</p>
                        <p>17.06~17.11</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">미얀마</p>
                        <p>미얀마 내수면 수산양식사업 기반조성사업 PMC용역</p>
                        <p>14.12~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country03">스리랑카</p>
                        <p>스리랑카 마타라 의료역량강화사업 PMC</p>
                        <p>17.02~20.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country04">우즈베키스탄</p>
                        <p>우즈베키스탄 시범온실 지원사업 기자재 공급</p>
                        <p>12.12~13.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country04">우즈베키스탄</p>
                        <p>우즈벡 표준청 국제동등성 확보 지원 및 통합시스템 구축사업 기자재 공급</p>
                        <p>17.08~18.04</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country04">우즈베키스탄</p>
                        <p>우즈베키스탄 사흐리삽즈시 훈련센터 설립 및 직업훈련 역량강화 컨설팅 사업 기자재 공급</p>
                        <p>18.04~10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country04">우즈베키스탄</p>
                        <p>우즈베키스탄 나보이 지역 조림사업</p>
                        <p>13.11~16.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country05">몽골</p>
                        <p>몽골 할흐골 시범농장 개발사업 기자재 공급</p>
                        <p>14.06~14.11</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country05">몽골</p>
                        <p>몽골 친환경 농업생산성 향상 기자재 공급</p>
                        <p>14.08~14.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country05">몽골</p>
                        <p>몽골 한몽기술대학교 역량강화 기자재 공급</p>
                        <p>15.09~16.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country05">몽골</p>
                        <p>몽골 출입국 관리 및 보안시스템 현대화사업 기자재 공급</p>
                        <p>16.04~16.09</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country05">몽골</p>
                        <p>몽골 축산물 안전관리시스템 개발사업 사후관리 지원 기자재 공급</p>
                        <p>17.01~17.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country06">라오스</p>
                        <p>라오스 통합모자보건의료 및 소아과 의료인력 양성사업</p>
                        <p>14.08~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country07">베트남</p>
                        <p>한베산업기술대학 3차 지원사업 기자재 공급</p>
                        <p>17.09~18.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country07">베트남</p>
                        <p>베트남 의료기자재 공급사업 자문 용역</p>
                        <p>17.07</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country07">베트남</p>
                        <p>베트남 3개성 의료기자재 소액차관 자문 용역</p>
                        <p>15.06~15.11</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country07">베트남</p>
                        <p>베트남 국립이비인후과 의료기자재  자문 용역</p>
                        <p>15.04~15.06</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country08">필리핀</p>
                        <p>필리핀 다구판 수산물 가공공장 건립사업 기자재 공급</p>
                        <p>10.12~11.05</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">필리핀</p>
                        <p>필리핀 낙농축산 역량강화 기자재 공급</p>
                        <p>11.09~12.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">필리핀</p>
                        <p>필리핀 HRD센터 설립사업 기자재 공급</p>
                        <p>12.12~13.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">필리핀</p>
                        <p>필리핀 태풍피해지원 구호품 공급</p>
                        <p>13.02~13.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">필리핀</p>
                        <p>필리핀 일로일로주 지역보건 의료 역량강화사업</p>
                        <p>13.12~16.01</p>
                        <p>PMC</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="oda-tab--item05">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_05-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_05-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">바누아투</p>
                        <p>바누아투 행정역량강화 기자재 공급</p>
                        <p>11.07~11.08</p>
                        <p>구매</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="oda-tab--item06">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_06-pc.jpg" alt="" class="pc-img">
                  <img src="/resources/images/taxfree_oda/img_taxfree_oda_02_06-mobile.jpg" alt="" class="mobile-img">
                  <div class="oda-table">
                    <div class="oda-table__thead">
                      <div>
                        <p>국가</p>
                        <p>진행 사업명</p>
                        <p>연도</p>
                        <p>용역구분</p>
                      </div>
                    </div>
                    <div class="oda-table__tbody">
                      <div>
                        <p class="country01">엘살바도르</p>
                        <p>엘살바도르 채소재배 기자재 지원사업 기자재 공급</p>
                        <p>10.06 ~ 10.09</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country02">에콰도르</p>
                        <p>짐바브웨&middot;에콰도르 농어촌개발사업 초청연수</p>
                        <p>10.10 ~ 11.08</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country03">볼리비아</p>
                        <p>볼리비아 고원지역 건강증진 및 삶의 질 향상 프로그램 PMC</p>
                        <p>17.12 ~ 22.10</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country04">파라과이</p>
                        <p>파라과이 보건의료체계 형성 및 일차의료 강화사업 PM</p>
                        <p>16.12 ~ 22.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country05">도미니카</p>
                        <p>도미니카공화국 여성의료환경 개선 기자재 공급</p>
                        <p>10.06 ~ 11.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country06">알제리</p>
                        <p>알제리 사하라 사막 새우양식연구센터 건립 PMC</p>
                        <p>10.12~14.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country06">알제리</p>
                        <p>알제리 새우양식장 건설 및 양식기술이전사업 사후관리</p>
                        <p>13.07~13.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country07">가나</p>
                        <p>가나 아크라 직업훈련원 기자재 공급</p>
                        <p>11.11~12.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country08">DR 콩고</p>
                        <p>DR콩고 추엔게 농촌개발사업 PMC수행 및 초청연수</p>
                        <p>10.12~13.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country09">알골라</p>
                        <p>앙골라 수산자원조성기술 역량강화사업 PMC 용역</p>
                        <p>14.01~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country10">튀니지</p>
                        <p>튀니지 코르크참나무숲 복원 시범사업 BDS용역</p>
                        <p>12.12~13.05</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country11">수단</p>
                        <p>수단 농업기술훈련원 건립사업 기자재 공급</p>
                        <p>16.01~16.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country12">에티오피아</p>
                        <p>에티오피아 아디스아바바 결핵예방퇴치사업 기자재 공급</p>
                        <p>12.07~13.07</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country13">탄자니아</p>
                        <p>탄자니아 농산물가공훈련센터 건립 2개사업 기자재 공급</p>
                        <p>10.12~11.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country14">우간다</p>
                        <p>우간다 과일가공공장 건립사업 기본설계조사 용역</p>
                        <p>11.06~12.04</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country15">짐바브웨</p>
                        <p>짐바브웨 농기계시험평가센터 지원사업 기자재 공급</p>
                        <p>10.12~11.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country15">짐바브웨</p>
                        <p>짐바브웨, 에콰도르 농어촌개발사업 초청연수 및 전문가 파견 용역</p>
                        <p>10.10~11.08</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country15">짐바브웨</p>
                        <p>짐바브웨 태양열 온수시스템 설치사업</p>
                        <p>11.12~12.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country16">레바논</p>
                        <p>레바논 원예작물 수확후 관리기술 지원사업 기자재 공급</p>
                        <p>17.03~18.01</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country17">이라크</p>
                        <p>이라크 남부 4개주 직업훈련원 기자재 공급</p>
                        <p>12.12~14.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country17">이라크</p>
                        <p>이라크 바스라 이동진료팀 구축사업 PMC용역</p>
                        <p>11.05~14.03</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country18">아프가니스탄</p>
                        <p>한-아프간 직업훈련원 건립사업 사후관리 기자재 공급</p>
                        <p>13.12~13.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country19">방글라데시</p>
                        <p>방글라데시 치타공 직업훈련원 역량강화사업 기자재 공급</p>
                        <p>13.02~13.10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country19">방글라데시</p>
                        <p>방글라데시 화학산업기술훈련원 역량강화사업 기자재 공급</p>
                        <p>18.04~10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country20">미얀마</p>
                        <p>미얀마 북부 관개역량 강화사업 사후관리 물품지원</p>
                        <p>11.03~11.05</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country20">미얀마</p>
                        <p>미얀마 농산물 수확후 관리기술 연구소 설립사업 기자재 공급</p>
                        <p>17.06~17.11</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country20">미얀마</p>
                        <p>미얀마 내수면 수산양식사업 기반조성사업 PMC용역</p>
                        <p>14.12~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country21">스리랑카</p>
                        <p>스리랑카 마타라 의료역량강화사업 PMC</p>
                        <p>17.02~20.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country22">우즈베키스탄</p>
                        <p>우즈베키스탄 시범온실 지원사업 기자재 공급</p>
                        <p>12.12~13.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country22">우즈베키스탄</p>
                        <p>우즈벡 표준청 국제동등성 확보 지원 및 통합시스템 구축사업 기자재 공급</p>
                        <p>17.08~18.04</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country22">우즈베키스탄</p>
                        <p>우즈베키스탄 사흐리삽즈시 훈련센터 설립 및 직업훈련 역량강화 컨설팅 사업 기자재 공급</p>
                        <p>18.04~10</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country22">우즈베키스탄</p>
                        <p>우즈베키스탄 나보이 지역 조림사업</p>
                        <p>13.11~16.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country23">몽골</p>
                        <p>몽골 할흐골 시범농장 개발사업 기자재 공급</p>
                        <p>14.06~14.11</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country23">몽골</p>
                        <p>몽골 친환경 농업생산성 향상 기자재 공급</p>
                        <p>14.08~14.12</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country23">몽골</p>
                        <p>몽골 한몽기술대학교 역량강화 기자재 공급</p>
                        <p>15.09~16.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country23">몽골</p>
                        <p>몽골 출입국 관리 및 보안시스템 현대화사업 기자재 공급</p>
                        <p>16.04~16.09</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country23">몽골</p>
                        <p>몽골 축산물 안전관리시스템 개발사업 사후관리 지원 기자재 공급</p>
                        <p>17.01~17.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country24">라오스</p>
                        <p>라오스 통합모자보건의료 및 소아과 의료인력 양성사업</p>
                        <p>14.08~18.12</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country25">베트남</p>
                        <p>한베산업기술대학 3차 지원사업 기자재 공급</p>
                        <p>17.09~18.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country25">베트남</p>
                        <p>베트남 의료기자재 공급사업 자문 용역</p>
                        <p>17.07</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country25">베트남</p>
                        <p>베트남 3개성 의료기자재 소액차관 자문 용역</p>
                        <p>15.06~15.11</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country25">베트남</p>
                        <p>베트남 국립이비인후과 의료기자재  자문 용역</p>
                        <p>15.04~15.06</p>
                        <p>EDCF</p>
                      </div>
                      <div>
                        <p class="country26">필리핀</p>
                        <p>필리핀 다구판 수산물 가공공장 건립사업 기자재 공급</p>
                        <p>10.12~11.05</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country26">필리핀</p>
                        <p>필리핀 낙농축산 역량강화 기자재 공급</p>
                        <p>11.09~12.03</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country26">필리핀</p>
                        <p>필리핀 HRD센터 설립사업 기자재 공급</p>
                        <p>12.12~13.06</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country26">필리핀</p>
                        <p>필리핀 태풍피해지원 구호품 공급</p>
                        <p>13.02~13.02</p>
                        <p>구매</p>
                      </div>
                      <div>
                        <p class="country26">필리핀</p>
                        <p>필리핀 일로일로주 지역보건 의료 역량강화사업</p>
                        <p>13.12~16.01</p>
                        <p>PMC</p>
                      </div>
                      <div>
                        <p class="country27">바누아투</p>
                        <p>바누아투 행정역량강화 기자재 공급</p>
                        <p>11.07~11.08</p>
                        <p>구매</p>
                      </div>
                    </div>
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