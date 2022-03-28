<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>비밀번호 변경 | KIST School</title>
    <jsp:include page="/WEB-INF/jsp/include/scadmin/library.jsp" flush="false" />
    <link rel="stylesheet" href="/resources/js/daumeditor/css/editor.css" type="text/css" charset="utf-8"/>
    <script src="/resources/js/daumeditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="/resources/js/jQuery-File-Upload-9.9.2/css/jquery.fileupload.css"/>
    <script src="/resources/js/jQuery-File-Upload-9.9.2/js/vendor/jquery.ui.widget.js"></script>
    <script src="/resources/js/jQuery-File-Upload-9.9.2/js/jquery.iframe-transport.js"></script>
    <script src="/resources/js/jQuery-File-Upload-9.9.2/js/jquery.fileupload.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script> -->
</head>
<body class="${category }">
    <jsp:include page="/WEB-INF/jsp/include/scadmin/header.jsp" flush="false" />
    <!-- //site-header -->
    <div class="site-container">
      <div class="container-fluid">
        <div class="page-header">
          <h1 class="h2 font-weight-light">비밀번호 변경</h1>
        </div>
        <form name="editor_form" id="editor_form" action="" method="post" accept-charset="utf-8" >
	        <div class="row">
	          <div class="col-xs-12">
	            <table class="table table-bordered">
	              <colgroup>
	                <col style="width:150px;">
	                <col> </colgroup>
	              <tbody>
	                <tr>
	                  <th class="active">현재 비밀번호
	                    <small class="text-danger">
	                      <i class="fa fa-asterisk" aria-hidden="true"></i>
	                    </small>
	                  </th>
	                  <td>
	                    <div class="form-inline">
	                      <input type="password" name="nPwd" id="nPwd" data-null = "not" title="현재 비밀번호" class="form-control input-sm" size="30"> </div>
	                  </td>
	                </tr>
	                <tr>
	                  <th class="active">새 비밀번호
	                    <small class="text-danger">
	                      <i class="fa fa-asterisk" aria-hidden="true"></i>
	                    </small>
	                  </th>
	                  <td>
	                    <div class="form-inline">
	                      <input type="password" name="pwd" id="pwd" class="form-control input-sm" size="30" data-null = "not" title="새 비밀번호"> </div>
	                  </td>
	                </tr>
	                <tr>
	                  <th class="active">새 비밀번호 확인
	                    <small class="text-danger">
	                      <i class="fa fa-asterisk" aria-hidden="true"></i>
	                    </small>
	                  </th>
	                  <td>
	                    <div class="form-inline">
	                      <input type="password" name="cPwd" id="cPwd" class="form-control input-sm" size="30" data-null = "not" title="새 비밀번호"> </div>
	                  </td>
	                </tr>
	              </tbody>
	            </table>
	            <!-- //table -->
	            <ul class="list-unstyled">
	              <li>
	                <i class="fa fa-info-circle" aria-hidden="true"></i> 비밀번호 작성 규칙
	                <ul>
	                  <li>비밀번호는 영어 , 숫자, 2종류 조합한 6자리 이상이어야 합니다.</li>
	                </ul>
	              </li>
	            </ul>
	          </div>
	        </div>
        </form>
        <div class="row">
          <div class="col-sm-4 text-center">
            <a class="btn btn-success _modifyBtn" role="button"><i class="fa fa-check" aria-hidden="true"></i>비밀번호 번경</a>
          </div>
          <div class="col-sm-4 text-right"> </div>
        </div>
      </div>
      <!-- //container-fluid -->
    </div>
    
    <!-- //site-container -->
    <jsp:include page="/WEB-INF/jsp/include/scadmin/footer.jsp" flush="false" />
    
    <!-- //site-footer -->
    <form action="/scadmin/board/${category}/list" class="_backForm" method="post">
    <input type="hidden" name="pageNo" value="${param.pageNo}" />
</form>

<script type="text/javascript">
    $(function () {
        $("._modifyBtn").click(function() {
            jQuery.ajaxSettings.traditional = true;
            var frm = $("form[name=editor_form]");
            
            var validationChk = fnValidateCheck(frm);
			
    		if (!validationChk)	return;
            
    		if(!checkPwd3($('#pwd').val())){
    			return;
    		}
    		
    		if($('#pwd').val() != $('#cPwd').val()){
    			alert('새 비밀번호와 비밀번호 확인이 동일하지 않습니다.');
    			return;
    		}
    		
    		
    		if (!confirm("수정 하시겠습니까?")) return;
    		
    		var fnApplyCallback = function(objResponse, statusText, xhr, $from) {
    			if (statusText == "success") {
    				if (objResponse["result"] == 'success') {
    					alert("수정 되었습니다.");
    					location.reload(true);
    				} else {
    					alert("데이터 전송 중 오류가 발생하였습니다.");
    				}
    			} else { 
    				alert("데이터 전송 중 오류가 발생하였습니다 .");
    			}
    		}

    		var options = {
    			url : "./modify.json",
    			type : "post",
    			dataType : 'json',
    			success : fnApplyCallback,
    			error : function(data, result, resultMsg) {
    				alert("데이터 전송 중 오류가 발생하였습니다.");
    			}
    		};
    		frm.ajaxSubmit(options);
        });

    });
</script>
  </body>
</html>