<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
<c:set var="FM" value="언론보도" scope="request"/>
<c:set var="SM" value="민족 통일의 가슴벅찬 미래, 현대아산이 이끌어갑니다." scope="request"/>
<c:set var="CLASS" value="promotion" scope="request"/>
<c:set var="MENUNM" value="홍보센터" scope="request"/>


<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/${CLASS }.css">
<style type="text/css">
</style>
</head>
  <body class="${CLASS }">
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
                <h3>${FM }</h3>
                <em>${SM }</em>
              </div>
              <!-- //heading -->
            </div>
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
              <c:if test="${fn:length(resultList) eq 0 }">
               	<div class="no-data">
		                  데이터가 없습니다.
		        </div>
               </c:if>
              <div class="image-board col04">
              	<div class="image-board__inner clearfix">
              		<c:forEach var="result" items="${resultList}">
	              		<a href="#" onclick="fnView('${result.id }');">
		                    <div class="img-mask">
		                    	<c:if test="${not empty result.defaultImage }"><img src="${result.defaultImage }" alt=""></c:if>
		                    </div>
		                    <p>${result.title}</p>
		                    <span><fmt:formatDate pattern="yyyy-MM-dd" value="${result.regDate}" /></span>
		                  </a>
	                </c:forEach>
              	</div>
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