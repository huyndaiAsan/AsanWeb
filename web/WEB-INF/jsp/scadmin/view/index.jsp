<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>현대아산 기업 관리자</title>
    <jsp:include page="/WEB-INF/jsp/include/scadmin/library.jsp" flush="false" />
	</head>
	<body class="sigle">
	  <div class="login-wrap">
	    <div class="panel panel-default">
	      <div class="panel-heading">
	        <h1 class="panel-title text-center">현대아산 기업 관리자</h1>
	      </div>
	      <div class="panel-body">
	        <form class="form-horizontal" name="loginForm" method="post" onsubmit="return false;">
	          <div class="form-group">
	            <div class="col-sm-12">
	              <div class="input-group">
	                <span class="input-group-addon">
	                  <i class="glyphicon glyphicon-user"></i>
	                </span>
	                <input id="id" type="text" placeholder="ID" class="form-control" name="id" title="아이디" data-null="not" >
	              </div>
	            </div>
	          </div>
	          <div class="form-group">
	            <div class="col-sm-12">
	              <div class="input-group">
	                <span class="input-group-addon">
	                  <i class="glyphicon glyphicon-lock"></i>
	                </span>
	                <input id="pwd" type="password" placeholder="Password" class="form-control" name="pwd" title="비밀번호" data-null="not" onKeyPress="if(event.keyCode == 13) { goLogin(); return false; }" >
	                <input type="hidden" name="fPw" />
	              </div>
	            </div>
	          </div>
	          <div class="form-group">
	            <div class="col-sm-12">
	              <div class="checkbox">
	                <label>
	                  <input type="checkbox"> 아이디 저장 </label>
	              </div>
	            </div>
	          </div>
	          <div class="form-group">
	            <div class="col-sm-12">
	              <button type="submit" class="btn btn-primary btn-block" onclick="goLogin();">로그인</button>
	            </div>
	          </div>
	        </form>
	        <!-- //form-horizontal -->
	      </div>
	      <!-- //panel-body -->
	    </div>
	    <!-- //panel -->
	  </div>
	  <!-- //login-wrap -->
	  <script type="text/javascript">
		function goLogin(){
			var frm = $("form[name=loginForm]");		
		
			var validationChk = fnValidateCheck( frm );
		    if ( !validationChk ) return ;
		 	
			frm.find("input[name='id']").val( $.trim(frm.find("input[name='id']").val()) );
			
	        // ajaxSubmit 전 처리 작업
	        var fnApplyBefore = function(romData, jqFrom, options){
	        }
	       
	        // ajaxSubmit 통신 후 처리 작업
	        var fnApplyCallback = function(objResponse, statusText, xhr, $from){                    
	            if (statusText == "success"){
	                if( objResponse["result"] == 'S' ){
	                	location.replace("/scadmin/board/news/list");
	                }else if(objResponse["result"] == "F"){
	                	alert("등록된 관리자 정보가 없습니다.");
	                }else{
	                	alert("데이터 전송 중 오류가 발생하였습니다.");                    
	                }
	            }else{
	                alert("데이터 전송 중 오류가 발생하였습니다.");    
	            }
	        }         
	        var options = {
	            url : "./loginProc",
	            type : "post" , 
	            dataType : 'json', 
	            //contentType: 'text/plain; charset=utf-8',
	            beforeSerialize: function() {

	            },
	            beforeSubmit : fnApplyBefore ,
	            success : fnApplyCallback , 
	            error: function(data, result, resultMsg) {
	               // console.dir("error : " + result + " ["+ resultMsg + "]");
	            }            
	        };
	        
	       frm.ajaxSubmit( options );	    			  
		}
	</script>
	</body>
</html>