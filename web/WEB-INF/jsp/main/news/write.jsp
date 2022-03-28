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
              </div>
              <div class="board-table-view">
                <div class="board-table-view__tit only-noto-kr">
                  <strong>${result.title}</strong>
                </div>
                <div class="board-table-view__info only-noto-kr">
                  <p class="view-file">
                    	첨부파일
                    <c:forEach var="fileResult" items="${fileList}">
                      <a href="${fileResult.savePath }" class="about-board__file" download="${fileResult.originName }">${fileResult.originName }</a>
                   	</c:forEach>
                    <!-- <span>등록된 첨부파일이 없습니다.</span> -->
                  </p>
                  <div class="clearfix">
                    <p class="view-count">
                      	조회<span>${result.readCount}</span>
                    </p>
                    <p class="view-date">
                      	등록일<span><fmt:formatDate pattern="yyyy-MM-dd" value="${result.regDate}" /></span>
                    </p>
                  </div>
                </div>
                <div class="board-table-view__con">
                  ${result.content }
                </div>
                <div class="button-wrap">
                  <a href="#" class="button01" id="listBtn">목록</a>
                </div>
                <div class="board-table-view__nav">
                  <c:choose>
                  	<c:when test="${not empty resultPre.title }">
                  	
                  	</c:when>
                  	<c:otherwise></c:otherwise>
                  </c:choose>
                  <div>
                    <em>이전글</em>
                    <c:choose>
                    	<c:when test="${not empty resultPre.title }"><a href="#"  onclick="fnView('${resultPre.id }');" class="about-board-preview__link">${resultPre.title }</a></c:when>
                    	<c:otherwise><span>이전글이 존재하지 않습니다.</span></c:otherwise>
                    </c:choose>
                  </div>
                  <div>
                    <em>다음글</em>
                    <c:choose>
                    	<c:when test="${not empty resultNext.title }"><a href="#"  onclick="fnView('${resultNext.id }');" class="about-board-preview__link">${resultNext.title }</a></c:when>
                    	<c:otherwise><span>다음글이 존재하지 않습니다.</span></c:otherwise>
                    </c:choose>
                  </div>
                </div>
              </div>
              <!-- //board-table-view -->
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