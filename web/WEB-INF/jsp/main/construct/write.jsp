<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />  
<c:set var="CLASS" value="construction" scope="request"/>
<c:set var="MENUNM" value="건설사업" scope="request"/>
<c:choose>
	<c:when test="${gubun eq '1' }">
		<c:set var="FM" value="토목" scope="request"/>
		<c:set var="SM" value="한민족이 함께할 미래의 땅을 창조하는 희망의 기술 모두가 꿈꾸는 미래의 땅을 일구겠습니다." scope="request"/>
	</c:when>
	<c:when test="${gubun eq '2' }">
		<c:set var="FM" value="건축" scope="request"/>
		<c:set var="SM" value="민족 통일의 가슴벅찬 미래, 현대아산이 이끌어갑니다." scope="request"/>
	</c:when>
	<c:when test="${gubun eq '3' }">
		<c:set var="FM" value="플랜트" scope="request"/>
		<c:set var="SM" value="민족 통일의 가슴벅찬 미래, 현대아산이 이끌어갑니다." scope="request"/>
	</c:when>
	<c:otherwise>
	
	</c:otherwise>
</c:choose>  
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
              </div>
              <div class="gallery">
                <div class="gallery-view">
                  <c:if test="${not empty result.defaultImage }"><img src="${result.defaultImage }" alt=""></c:if>
                </div>
                <div class="gallery-desc">
                  <strong class="only-noto-kr">${result.title }</strong>
                  <ul>
                    <li><em>발주처</em>${result.ordering }</li>
                    <li><em>공사개요</em>${result.summary }</li>
                    <li><em>착공</em>${result.stdt }</li>
                    <li><em>준공</em>${result.endt }</li>
                  </ul>
                </div>
              </div>
              <!-- //gallery -->
              <div class="text-wrap">
                ${result.content }
              </div>
              <div class="button-wrap">
                  <a href="#" class="button01" id="listBtn">목록</a>
                </div>
            </div>
          </div>
          <!-- //contents -->
        </div>
        <!-- //container -->
      </div>
       <form action="./list" class="_backForm" method="get">
	    <input type="hidden" name="pageNo" value="${param.pageNo}" />
	    <input type="hidden" name="searchOption" value="${param.searchOption}" />
	    <input type="hidden" name="searchKeyword" value="${param.searchKeyword}" />
	    <input type="hidden" name="boardId" id="boardId" value="" />
	    <input type="hidden" name="gubun" id="gubun" value="${gubun }" />
		</form>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
  <script type="text/javascript">
    $(function () {
    	$("#listBtn").click(function() {
            $("._backForm").submit();
        });
    });
    
    function fnView(s){
    	$('#boardId').val(s);
    	$("._backForm").attr("action", "./read");
    	$("._backForm").submit();
    }
</script>    	
</html>