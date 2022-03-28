<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><c:choose>
        		<c:when test="${category eq 'notice' }">공지사항</c:when>
        		<c:when test="${category eq 'news' }">언론보도</c:when>
        		<c:when test="${category eq 'reference' }">자료실</c:when>
        		<c:when test="${category eq 'announce' }">전자공고</c:when>
        		<c:when test="${category eq 'recruit' }">채용공고</c:when>
        		<c:otherwise>건설</c:otherwise>
        	</c:choose> | 현대아산 기업</title>
    <jsp:include page="/WEB-INF/jsp/include/scadmin/library.jsp" flush="false" />
    
</head>
<body class="${category }">
	<jsp:include page="/WEB-INF/jsp/include/scadmin/header.jsp" flush="false" />
    <!-- //site-header -->
    <div class="site-container">
      <div class="container-fluid">
        <div class="page-header">
        	<h1 class="h2 font-weight-light">
        	<c:choose>
        		<c:when test="${category eq 'notice' }">공지사항</c:when>
        		<c:when test="${category eq 'news' }">언론보도</c:when>
        		<c:when test="${category eq 'reference' }">자료실</c:when>
        		<c:when test="${category eq 'announce' }">전자공고</c:when>
        		<c:when test="${category eq 'recruit' }">채용공고</c:when>
        		<c:otherwise>건설</c:otherwise>
        	</c:choose>
          	</h1>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <table class="table table-striped table-bordered">
              <thead>
                <th class="text-center" style="width:60px;">번호</th>
                <th class="text-center" style="width:80px;">구분</th>
                <th class="text-center">제목</th>
                <th class="text-center" style="width:200px;">등록일</th>
                <th class="text-center" style="width:100px;">비고</th>
              </thead>
              <tbody>
              	<c:forEach var="result" items="${resultList}">
		            <tr data-result-id="${result.id}">
		                <td> ${(pager.pageNo - 1) * 10 + result.RNUM} </td>
		                <td>
		                	<c:choose>
		                		<c:when test="${result.gubun eq '1'}">토목</c:when>
		                		<c:when test="${result.gubun eq '2'}">건축</c:when>
		                		<c:otherwise>플랜트</c:otherwise>
		                	</c:choose>
		                </td>
		                <td><a href="/scadmin/board/${category}/read?boardId=${result.id}&pageNo=${pager.pageNo}">${result.title}</a></td>
		                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${result.regDate}" /></td>
		                <td style="text-align: center;"><button type="button" class="btn btn-danger btn-xs _deleteBtn">삭제</button></td>
		            </tr>
	            </c:forEach>
              </tbody>
            </table>
            <!-- //table -->
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="text-center">
              <ul class="pagination">
                <aac:paging pager="${pager}" />
			    <form action="/scadmin/board/${category}/list" class="_bbsForm" method="post">
			        <input type="hidden" name="pageNo" value="${pager.pageNo}" />
			    </form>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4 text-left"> </div>
          <div class="col-sm-4 text-center"></div>
          <div class="col-sm-4 text-right">
            <a class="btn btn-success" href="/scadmin/board/${category}/write?boardId=${result.id}&pageNo=${pager.pageNo}" role="button">
              <i class="fa fa-pencil" aria-hidden="true"></i> 등록</a>
          </div>
        </div>
      </div>
      <!-- //container-fluid -->
    </div>
    <!-- //site-container -->
    <jsp:include page="/WEB-INF/jsp/include/scadmin/footer.jsp" flush="false" />
    <!-- //site-footer -->
  </body>
<script type="text/javascript">
    $(function() {
        $(".pagination a").click(function(e) {
            e.preventDefault();
            var clkPageNo = $(this).attr("data-pageno");
            if(!Number(clkPageNo)) {
                return;
            }
            $("[name='pageNo']", "._bbsForm").val(clkPageNo);
            $("._bbsForm").submit();
        });

        $("._deleteBtn").click(function(e) {
        	if(confirm("삭제하시겠습니까?")){
	            var boardId = $(this).parents("tr").attr("data-result-id");
	            document.location.href = "/scadmin/board/${category}/remove?boardId=" + boardId + "&pageNo=${pager.pageNo}";
        	}
        });
    });
</script>
</body>
</html>