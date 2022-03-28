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
			<a href="/admin/homepage/background/list" data-category="background">메인 배경관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/homepage/banner/list" data-category="banner">배너관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/homepage/adminlog/list" data-category="adminlog">관리자로그관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/homepage/statistics/view" data-category="statistics">방문자접속통계</a>
		</li>
	</ul>
</div>