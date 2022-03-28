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
			<a href="/admin/eduMgmt/edu/list" data-category="member">교육관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/eduMgmt/semi/list" data-category="organization">세미나&워크샵관리</a>
		</li>
		<li role="presentation" class="">
			<a href="/admin/eduMgmt/applyList" data-category="organization">신청자관리</a>
		</li>
	</ul>
</div>