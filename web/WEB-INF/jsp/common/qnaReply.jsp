<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<input type="hidden" id="replyLength" value="${fn:length(resultList)}" />
<c:forEach var="result" items="${resultList}">
<div class="board-reply-v1__head">
	<h3 class="board-reply-v1__tit">답변</h3>
	<span class="board-reply-v1__date"><fmt:formatDate pattern="yyyy.MM.dd" value="${result.regDate}" /></span>
</div>
<div class="board-reply-v1__body">
	<div class="board-article">
		<pre><c:out value="${result.comment}" escapeXml="true"/></pre>
	</div>
	<!-- //board-article -->
</div>
</c:forEach>