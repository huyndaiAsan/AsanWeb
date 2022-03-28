<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<div class="u-page-breadcrumb">
            <div class="u-page-breadcrumb__wrap">
              <div class="u-page-breadcrumb__item u-page-breadcrumb__item--home u-page-breadcrumb__item--mobile-hide">
                <a href="/main" class="u-page-breadcrumb__link">메인</a>
              </div>
              <div class="u-page-breadcrumb__item u-page-breadcrumb__item--mobile-hide" >
                <a href="#this" class="u-page-breadcrumb__link" id="firstMenu">${FM }</a>
                <ul class="u-page-list u-page-list--depth1">
                  <li class="u-page-list__item <c:if test="${FM eq 'About Us' }">active</c:if>"> 
                    <a href="/aboutus/introduce" class="u-page-list__link">About Us</a>
                  </li>
                  <li class="u-page-list__item <c:if test="${FM eq 'Faculty&Major' }">active</c:if>">
                    <a href="/professors/list" class="u-page-list__link">Faculty & Major</a>
                  </li>
                  <li class="u-page-list__item <c:if test="${FM eq 'Admission' }">active</c:if>">
                    <a href="/admission/degree" class="u-page-list__link">Admission</a>
                  </li>
                  <li class="u-page-list__item <c:if test="${FM eq 'School Life' }">active</c:if>">
                    <a href="/schoollife/benefits" class="u-page-list__link">School Life</a>
                  </li>
                  <li class="u-page-list__item <c:if test="${FM eq 'Accomplishments' }">active</c:if>">
                    <a href="/accomplishments/accomplishments" class="u-page-list__link">Accomplishments</a>
                  </li>
                </ul>
              </div>
              <c:if test="${FM eq 'About Us' }">
	              <div class="u-page-breadcrumb__item  u-page-breadcrumb__item--last" >
	                <a href="#this" class="u-page-breadcrumb__link" id="subMenu">${SM }</a>
	                <ul class="u-page-list u-page-list--depth2">
	                  <li class="u-page-list__item <c:if test="${SM eq 'Introduction' }">active</c:if>">
	                    <a href="/aboutus/introduce" class="u-page-list__link">Introduction</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Message from the KIST President' }">active</c:if>">
	                    <a href="/aboutus/president" class="u-page-list__link">Message from the KIST President</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Message from the Dean' }">active</c:if>">
	                    <a href="/aboutus/dean" class="u-page-list__link">Message from the Dean</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Status' }">active</c:if>">
	                    <a href="/aboutus/status" class="u-page-list__link">Status</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'News' }">active</c:if>">
	                    <a href="/aboutus/news/list" class="u-page-list__link">News</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Notice' }">active</c:if>">
	                    <a href="/aboutus/notice/list" class="u-page-list__link">Notice</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Map&Direction' }">active</c:if>">
	                    <a href="/aboutus/map" class="u-page-list__link">Map & Direction</a>
	                  </li>
	                </ul>
	              </div>
              </c:if>
              <c:if test="${FM eq 'School Life' }">
	              <div class="u-page-breadcrumb__item  u-page-breadcrumb__item--last" >
	                <a href="#this" class="u-page-breadcrumb__link" id="subMenu">${SM }</a>
	                <ul class="u-page-list u-page-list--depth2">
	                  <li class="u-page-list__item <c:if test="${SM eq 'Introduction' }">active</c:if>">
	                    <a href="/schoollife/benefits" class="u-page-list__link">Benefits</a>
	                  </li>
	                  <li class="u-page-list__item <c:if test="${SM eq 'Introduction' }">active</c:if>">
	                    <a href="/schoollife/gallery/list" class="u-page-list__link">Gallery</a>
	                  </li>
	                </ul>
	              </div>
              </c:if>
              <c:if test="${FM eq 'Faculty & Major' }">
	              <div class="u-page-breadcrumb__item u-page-breadcrumb__item--last" >
	                <a href="#this" class="u-page-breadcrumb__link" id="subMenu">${SM }</a>
	                <ul class="u-page-list u-page-list--depth2">
	                  <li class="u-page-list__item <c:if test="${SM eq 'Search for KIST School Professors' }">active</c:if>">
		                  <a href="/professors/list" class="u-page-list__link">Search for KIST School Professors</a>
		                </li>
		                <li class="u-page-list__item <c:if test="${SM eq 'Division of Bio-Medical Science & Technology' }">active</c:if>">
		                  <a href="/professors/bio/list" class="u-page-list__link">Division of Bio-Medical Science & Technology</a>
		                </li>
		                <li class="u-page-list__item <c:if test="${SM eq 'Division of Energy & Environment Technology' }">active</c:if>">
		                  <a href="/professors/energy/list" class="u-page-list__link">Division of Energy & Environment Technology</a>
		                </li>
		                <li class="u-page-list__item <c:if test="${SM eq 'ivision of Nano & Information Technology' }">active</c:if>">
		                  <a href="/professors/nano/list" class="u-page-list__link">Division of Nano & Information Technology</a>
		                </li>
	                </ul>
	              </div>
              </c:if>
              <c:if test="${FM eq 'Admission' }">
	              <div class="u-page-breadcrumb__item u-page-breadcrumb__item--last" >
	                <a href="#this" class="u-page-breadcrumb__link" id="subMenu">${SM }</a>
	                <ul class="u-page-list u-page-list--depth2">
	                  <li class="u-page-list__item <c:if test="${SM eq 'Degree Program' }">active</c:if>">
		                  <!-- <a href="/admission/degree" class="u-page-list__link">Search for KIST School Professors</a> -->
		                  <a href="/admission/degree" class="u-page-list__link">Degree Program</a>
		                </li>
		                <li class="u-page-list__item <c:if test="${SM eq 'Outstanding Students Attraction Program' }">active</c:if>">
		                  <!-- <a href="/admission/dualdegree" class="u-page-list__link">Division of Bio-Medical Science & Technology</a> -->
		                  <a href="/admission/dualdegree" class="u-page-list__link">Outstanding Students Attraction Program</a>
		                </li>
	                </ul>
	              </div>
              </c:if>
            </div>
            <div class="u-page-breadcrumb__shadow"></div>
          </div>

<script>

</script>
