<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>특성분석센터</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css">
<link rel="stylesheet" type="text/css" href="../../resources/css/contents.css">
</head>
<body>
<!-- <div class="popup-equipment"> -->
<div class="popup">
	<div class="image"><img src="/resources/images/main/popup/popup_20170628.jpg" id="test" alt=""></div>
	<div style="background-color:#000000; height:30px; text-align:center; margin-top: -5px;">
		<form name="pop">
			<input type="checkbox" name="check_close" value="checkbox" checked><a href="javascript:history.onclick=closeWin();"><span style="font-size:11px;"><font color="#FFFFFF">오늘하루 이 창을 열지 않습니다.</font></span></a>
		</form>	
	</div>
</div>
<script type="text/javascript"> 

function setCookie(name, value, expiredays){
	 var todayDate = new Date();
	 todayDate.setDate(todayDate.getDate()+expiredays);
	 document.cookie = name+"="+escape(value)+"; path=/; expires="+todayDate.toGMTString() +";"
}

function closeWin(){
	 if(document.pop.check_close.checked){
	  setCookie("new1","done",1);
	  self.close();
	 } 
}
</script>
</body>
</html>