<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="result" items="${resultList}">
<tr>
  <td class="txtL" colspan="6">
    <span class="name">${result.regUserId}</span>
    <span class="date"><fmt:formatDate pattern="yyyy-MM-dd" value="${result.regDate}" /></span>
    <c:if test="${result.regUserId eq sessionScope.loginInfo.userId}">
    <span class="pull-right">
        <a class="btn-link _replyModifyLink" href="#">수정</a>
        <a class="btn-link _replyDeleteLink" href="#" data-reply-id="${result.id}">삭제</a>
    </span>
    </c:if>
    <p class="content">
        <pre>${result.comment}</pre>
        <span style="display: none;" class="_userReplyInput">
          <input type="hidden" name="modifyReplyId" value="${result.id}" />
          <textarea name="modifyComment" cols="88" rows="3">${result.comment}</textarea>
          <a class="btn btn-img btn-xs btn-modify-xs _modifyReplyBtn" href="#">수정</a>
        </span>
    </p>
  </td>
</tr>
</c:forEach>
<tr class="recomment">
  <td colspan="6">
    <textarea name="comment" cols="88" rows="3"></textarea>
    <a class="btn btn-img btn-xs btn-confirm-xs _addReplyBtn" href="#">등록</a></td>
</tr>

