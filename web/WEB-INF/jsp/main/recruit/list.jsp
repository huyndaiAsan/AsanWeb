<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />  
<c:set var="FM" value="인재채용" scope="request"/>
<c:set var="SM" value="남북한의 미래를 이끌어갈 참신한 인재들의 도전을 기다립니다." scope="request"/>
<c:set var="CLASS" value="about" scope="request"/>
<c:set var="MENUNM" value="회사소개" scope="request"/>
<c:set var="MENUNMSUB" value="인재채용" scope="request"/>
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
                <em>현대아산의 미래를 이끌어갈 참신한 인재들의 도전을 기다립니다.</em>
              </div>
              <!-- //heading -->
            </div>
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="/about/recruit/list" class="current">채용공고 및 안내</a>
                  <a href="/about/about_0502">인재상</a>
                  <a href="/about/about_0503">인사제도</a>
                </div>
              </div>
            </div>
            <!-- //link-tab -->
            <div class="inner">
              <div class="search-board-table">
                <form action="" name="searchFrm" id="searchFrm">
                  <input type="hidden" name="pageNo" id="pageNo2" value="${pager.pageNo}" />
                  <input type="hidden" name="boardId" id="boardId" value="" />
                  <input type="hidden" name="searchOption" id="searchOption" value="1" />
                  <fieldset>
                    <legend class="hide-element">검색</legend>
                    <div>
                      <input type="text" name="searchKeyword" id="searchKeyword" placeholder="검색어를 입력하세요." title="검색어를 입력하세요." value="${param.searchKeyword }">
                      <button type="button" class="hide-text" onclick="fnSearch(); return false;">검색</button>
                    </div>
                    <p>총 <em class="point-color01">${pager.totalCount}</em>건</p>
                  </fieldset>
                </form>
              </div>
              <!-- //search-board-table -->
              <div class="board-table recruit-board">
                <table>
                  <caption class="hide-element">인재채용(번호, 공고명, 접수기간, 상태)</caption>
                  <colgroup>
                    <col style="width: 15%;"> <!-- 180px -->
                    <col style="width: auto;"> <!-- 534px -->
                    <col style="width: 25.5%;"> <!-- 306px -->
                    <col style="width: 15%;"> <!-- 180px -->
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">공고명</th>
                      <th scope="col">접수기간</th>
                      <th scope="col">상태</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<!-- 상단 고정 채용공고 부분 (tr class="fix" 일 경우 배경색 지정 css)
                  	<tr class="fix">
                  		<td>★</td>
                  		<td class="align-left">
	                        <a href="#" onclick="fnView('${result.id }');">
	                          ${result.endt > today ? "<i class='mobile-state state01'>모집중</i>" : "<i class='mobile-state state02'>마감</i>" }
	                          ${result.title}
	                          <span class="mobile-date">
							  ${result.stdt} ~ 
							  <c:choose>
								<c:when test="${result.endt eq '9999-12-31' }">채용시</c:when>
								<c:otherwise>${result.endt}</c:otherwise>
							  </c:choose>
							  </span>
	                        </a>
                      	</td>
                  		<td class="pc-date">
						  ${result.stdt} ~ 
						  <c:choose>
							<c:when test="${result.endt eq '9999-12-31' }">채용시</c:when>
							<c:otherwise>${result.endt}</c:otherwise>
						  </c:choose>
					  	</td>
                      	<td class="pc-state">${result.endt > today ? "<i class='state01'>모집중</i>" : "<i class='state02'>마감</i>" }</td>
                  	</tr>
                  	 -->
                  	 <!-- 화면 테스트용  -->
                  	 <c:forEach var="topMarkList" items="${topMarkList}">
                  	 <tr class="fix">
                  		<td>★</td>
                  		<td class="align-left">
	                        <a href="#" onclick="fnView('${topMarkList.id }');">
	                          ${topMarkList.endt > today ? "<i class='mobile-state state01'>모집중</i>" : "<i class='mobile-state state02'>마감</i>" }
	                          ${topMarkList.title}
	                          <span class="mobile-date">
							  ${topMarkList.stdt} ~ 
							  <c:choose>
								<c:when test="${topMarkList.endt eq '9999-12-31' }">채용시</c:when>
								<c:otherwise>${topMarkList.endt}</c:otherwise>
							  </c:choose>
							  </span>
	                        </a>
	                      </td>
                  		<td class="pc-date">
						  ${topMarkList.stdt} ~ 
						  <c:choose>
							<c:when test="${topMarkList.endt eq '9999-12-31' }">채용시</c:when>
							<c:otherwise>${topMarkList.endt}</c:otherwise>
						  </c:choose>
						  </td>
                      	<td class="pc-state">${topMarkList.endt > today ? "<i class='state01'>모집중</i>" : "<i class='state02'>마감</i>" }</td>
                  	</tr>
                  	</c:forEach>
                  	<c:forEach var="result" items="${resultList}">
	                    <tr>
	                      <td>${pager.totalCount - result.RNUM + 1}</td>
	                      <td class="align-left">
	                        <a href="#" onclick="fnView('${result.id }');">
	                          ${result.endt > today ? "<i class='mobile-state state01'>모집중</i>" : "<i class='mobile-state state02'>마감</i>" }
	                          ${result.title}
	                          <span class="mobile-date">
							  ${result.stdt} ~ 
							  <c:choose>
								<c:when test="${result.endt eq '9999-12-31' }">채용시</c:when>
								<c:otherwise>${result.endt}</c:otherwise>
							  </c:choose>
							  </span>
	                        </a>
	                      </td>
	                      <td class="pc-date">
						  ${result.stdt} ~ 
						  <c:choose>
							<c:when test="${result.endt eq '9999-12-31' }">채용시</c:when>
							<c:otherwise>${result.endt}</c:otherwise>
						  </c:choose>
						  </td>
	                      <td class="pc-state">${result.endt > today ? "<i class='state01'>모집중</i>" : "<i class='state02'>마감</i>" }</td>
	                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
                <c:if test="${fn:length(resultList) eq 0 }">
                	<div class="no-data">
			                  데이터가 없습니다.
			        </div>
                </c:if>
              </div>
              <!-- //board-table -->
              <div class="pagination">
                <aac:frontpaging pager="${pager}" />
                <form action="./list" class="_bbsForm" method="post">
			        <input type="hidden" name="pageNo" value="${pager.pageNo}" />
			    </form>
              </div>
              <!-- //pagination -->
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
  <script type="text/javascript">
  $(function() {
      $(".pagination a").click(function(e) {
          e.preventDefault();
          var clkPageNo = $(this).attr("data-pageno");
          if(!Number(clkPageNo)) {
              return;
          }
          $("[name='pageNo']", "#searchFrm").val(clkPageNo);
          $("#searchFrm").submit();
      });

  });
    
    function fnView(s){
    	$('#boardId').val(s);
    	$("#searchFrm").attr("action", "./read");
    	$("#searchFrm").submit();
    }
    
    function fnSearch(){
    	$('#pageNo2').val(1);
    	$("#searchFrm").attr("action", "./list");
    	$("#searchFrm").submit();
    }
</script>
</html>