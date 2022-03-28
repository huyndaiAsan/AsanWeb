<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
// SSL페이지 접속이 아니면 https페이지로 리다이렉트
//if (window.location.protocol != "https:" && window.location.host.indexOf("localhost")<0) {
//	location.replace( "https://www.hdasan.com" + window.location.pathname + window.location.search + window.location.hash );
//}
</script>
	<div class="wrap__row">
		<div class="header">
          <div class="inner only-noto-kr">
            <h1><a href="/" class="hide-text">Opening The Way 현대아산</a></h1>
            <ul class="language">
              <li><a href="/" class="point-color01">KOR</a></li>
              <!--<li><a href="/">ENG</a></li>-->
            </ul>
            <button type="button" class="hide-text mobile-gnb-open">메뉴열기</button>
            <div class="gnb">
              <ul class="gnb__depth01">
                <li>
                  <a href="/about/about_01">회사소개</a>
                  <ul class="gnb__depth02">
                    <li><a href="/about/about_01">개요</a></li>
                    <li><a href="/about/about_0201">연혁</a></li>
                    <!--<li><a href="/about/about_03">CEO 인사말</a></li>-->
                    <li><a href="/about/about_04">사회공헌</a></li>
                    <li>
                      <a href="/about/recruit/list">인재채용</a>
                      <ul class="gnb__depth03">
                        <li><a href="/about/recruit/list">채용공고 및 안내</a></li>
                        <li><a href="/about/about_0502">인재상</a></li>
                        <li><a href="/about/about_0503">인사제도</a></li>
                      </ul>
                    </li> 
                    <li><a href="/about/announce/list">전자공고</a></li>
                    <li><a href="/about/about_0701">CI</a></li>
                    <li><a href="/about/about_0901">건설 BI</a></li>
                    <li><a href="/about/about_0801">오시는 길</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/tourism/tourism_0101">관광사업</a>
                  <ul class="gnb__depth02">
                    <li>
                      <a href="/tourism/tourism_0101">북측관광</a>
                      <ul class="gnb__depth03">
                        <li><a href="/tourism/tourism_0101">금강산</a></li>
                        <li><a href="/tourism/tourism_0102">개성</a></li>
                        <li><a href="/tourism/tourism_0103">백두산</a></li>
                        <li><a href="/tourism/tourism_0104">평양</a></li>
                        <li><a href="/tourism/tourism_0106">기타</a></li>
                      </ul>
                    </li>
                    <li>
                      <a href="/tourism/tourism_0201">국내외관광</a>
                      <ul class="gnb__depth03">
                        <li><a href="/tourism/tourism_0201">크루즈</a></li>
                        <li><a href="/tourism/tourism_0202">일반관광</a></li>
                        <li><a href="/tourism/tourism_0203">MICE</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="/industry/industry_soc_0101">개성공업지구&middot;SOC</a>
                  <ul class="gnb__depth02">
                    <li><a href="/industry/industry_soc_0101">개성공업지구</a></li>
                    <li><a href="/industry/industry_soc_02">SOC사업</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/build/construct/list">건설사업</a>
                  <ul class="gnb__depth02">
                    <li><a href="/build/construct/list">토목</a></li>
                    <li><a href="/build/construct/list?gubun=2">건축</a></li>
                    <li><a href="/build/construct/list?gubun=3">플랜트</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/taxfree_oda/taxfree_oda_01">면세&middot;ODA</a>
                  <ul class="gnb__depth02">
                    <li><a href="/taxfree_oda/taxfree_oda_01">면세사업</a></li>
                    <li><a href="/taxfree_oda/taxfree_oda_02">ODA용역</a></li>
                  </ul>
                </li>
                <li>
                  <a href="/promotion/notice/list">홍보센터</a>
                  <ul class="gnb__depth02">
                    <li><a href="/promotion/notice/list">공지사항</a></li>
                    <li><a href="/promotion/promotion_02">아산역사관</a></li>
                    <li><a href="/promotion/news/list">언론보도</a></li>
                    <li><a href="/promotion/reference/list">자료실</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <button type="button" class="hide-text mobile-gnb-close">메뉴닫기</button>
          </div>
        </div>
	</div>