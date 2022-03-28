<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="result" items="${resultList}">
<div class="reply">
	<div class="_userReply">
		<div class="board-article" style="white-space:pre-line;">
			<c:out value="${result.comment}" escapeXml="true"/>
		</div>
		<div class="board-foot board-foot-border">
			<span>
				<button type="button" class="btn btn-sm btn-flat btn-danger _replyDeleteLink" data-reply-id="${result.id}">
					<i class="fa fa-trash" aria-hidden="true"></i> 삭제</button>
				<button type="button" class="btn btn-sm btn-flat btn-primary _replyModifyLink">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</button>
			</span>
		</div>
	</div>
	<!-- 수정 form -->
	<div style="display: none;" class="_userReplyInput">
		<input type="hidden" name="modifyReplyId" value="${result.id}" />
		<div class="form">
			<div class="form-group">
				<textarea name="modifyComment" placeholder="답변작성" id="" cols="30" rows="10" class="form-control">${result.comment}</textarea>
			</div>
		</div>
		<div class="board-foot">
			<span>
				<button type="button" class="btn btn-sm btn-flat btn-default _cancelModifyBtn">
					<i class="fa fa-times" aria-hidden="true"></i> 취소</button>
				<button type="button" class="btn btn-sm btn-flat btn-success _modifyReplyBtn">
					<i class="fa fa-check" aria-hidden="true"></i> 수정</button>
			</span>
		</div>
	</div>
</div>
</c:forEach>
<!-- Admin 용 -->
<c:if test="${fn:length(resultList) eq 0}">
<div class="form">
	<div class="form-group">
		<textarea name="comment" placeholder="답변작성" id="" cols="30" rows="10" class="form-control"></textarea>
	</div>
</div>
<div class="board-foot">
	<span>
		<button type="button" class="btn btn-sm btn-flat btn-success _addReplyBtn">
			<i class="fa fa-check" aria-hidden="true"></i> 작성</button>
	</span>
</div>
</c:if>