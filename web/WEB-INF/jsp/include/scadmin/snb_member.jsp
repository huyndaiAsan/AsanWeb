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
			<a href="/admin/member/list" data-category="member">회원관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/organization/list" data-category="organization">기관관리</a>
		</li>
	</ul>
</div>