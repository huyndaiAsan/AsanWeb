<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function() {
	var url = $(location).attr('pathname');

	$(".snb > ul > li").each(function(idx){
	    var $a = $(this).find("a");
	    if(url.indexOf($a.data("category")) > -1) {
	    	$(this).addClass("active");
	    }
	});
});
</script>
<div class="snb">
	<ul class="nav nav-pills">
		<li role="presentation" class="">
			<a href="/admin/board/notice/list" data-category="notice">공지사항</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/board/file/list" data-category="file">자료실</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/board/recruitment/list" data-category="recruitment">채용안내</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/board/photo/list" data-category="photo">홍보뉴스</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/letter/list" data-category="letter">뉴스레터</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/board/qna/list" data-category="qna">Q&amp;A</a>
		</li>
	</ul>
</div>