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
    <title><c:choose>
        		<c:when test="${category eq 'notice' }">공지사항</c:when>
        		<c:when test="${category eq 'news' }">언론보도</c:when>
        		<c:when test="${category eq 'reference' }">자료실</c:when>
        		<c:when test="${category eq 'announce' }">전자공고</c:when>
        		<c:when test="${category eq 'recruit' }">채용공고</c:when>
        		<c:otherwise>건설</c:otherwise>
        	</c:choose> | 현대아산 기업</title>
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
          <h1 class="h2 font-weight-light">
          	<c:choose>
        		<c:when test="${category eq 'notice' }">공지사항</c:when>
        		<c:when test="${category eq 'news' }">언론보도</c:when>
        		<c:when test="${category eq 'reference' }">자료실</c:when>
        		<c:when test="${category eq 'announce' }">전자공고</c:when>
        		<c:when test="${category eq 'recruit' }">채용공고</c:when>
        		<c:otherwise>건설</c:otherwise>
        	</c:choose>
          </h1>
        </div>
        <form name="editor_form" id="editor_form" action="/admin/board/${category}/add" method="post" accept-charset="utf-8" enctype="multipart/form-data">
        <input type="hidden" name="delId" id="delId" value="" />
        <input type="hidden" name="id" id="id" value="${empty result.id  ? 0: result.id}" />
        <input type="hidden" name="content" id="content" value="" />
        <input type="hidden" name="fixynChk" id="fixynChk" value="N" />
        <div class="row">
          <div class="col-sm-12">
            <table class="table table-bordered">
              <colgroup>
                <col style="width:100px;">
                <col>
                <col style="width:100px;">
                <col> </colgroup>
              <tbody>
                <tr>
                  <th class="active">제목</th>
                  <td colspan="3">
                    <input type="text" name="title" id="inputTitle" class="form-control input-sm" value="${result.title}" data-null="not" title="제목"> </td>
                </tr>
                <tr>
                  <th class="active">등록일</th>
                  <td>
                  	<div data-min-view="2" data-date-format="yyyy-mm-dd" class="input-group date datetime date-width-default" data-link-field="dtp_input1">
                         <input size="16" type="text" name="reg_Date" id="reg_Date" value="${result.reg_Date}" readonly="" class="form-control" data-null="not" title="등록일">
                         <span class="input-group-addon input-group-addon-transparent">
                           <span class="glyphicon glyphicon-th hide"></span>
                           <i class="fa fa-calendar" aria-hidden="true"></i>
                         </span>
                       </div>
                  </td>
                  <th class="active">조회수</th>
                  <td>${result.readCount}</td>
                </tr>
                <tr>
                  <th class="active">접수기간</th>
                  <td colspan="3">
                    <div class="col-sm-12">
                      <div class="row">
                        <div class="form-inline">
                          <div class="input-group">
                            <div data-min-view="2" data-date-format="yyyy-mm-dd" class="input-group date datetime date-width-default" data-link-field="dtp_input1">
                              <input size="16" type="text" name="stdt" id="stdt" value="${result.stdt}" readonly="" class="form-control" data-null="not" title="접수기간">
                              <span class="input-group-addon input-group-addon-transparent">
                                <span class="glyphicon glyphicon-th hide"></span>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                              </span>
                            </div>
                            <span class="input-group-addon">~</span>
                            <div data-min-view="2" data-date-format="yyyy-mm-dd" class="input-group date datetime date-width-default" data-link-field="dtp_input1">
                              <input size="16" type="text"  name="endt" id="endt" value="${result.endt}" readonly="" class="form-control" data-null="not" title="접수기간">
                              <span class="input-group-addon input-group-addon-transparent">
                                <span class="glyphicon glyphicon-th hide"></span>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                              </span>
                            </div>
                            <span class="input-group-addon"><input type="checkbox" name="unlimit" id="unlimit" <c:if test="${result.endt eq '9999-12-31'}">checked</c:if> > 채용시</span>
                            <span class="input-group-addon"><input type="checkbox" name="fix" id="fix" <c:if test="${result.top_mark eq 'Y'}">checked</c:if>> 게시글 상단 고정</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th class="active">첨부파일</th>
                  <td colspan="3">
                  	<c:forEach var="fileResult" items="${fileList}">
                  	<div>
                  		<a href="${fileResult.savePath }" target="_blank">${fileResult.originName }</a>
                  		<input type="hidden" name="fileId" id="fileId" value="${fileResult.id }">
                  		<button class="btn btn-xs btn-danger btn-remove" onclick="fnRemove(this, ${fileResult.id });return false;">
                  			<i class="fa fa-times" aria-hidden="true"></i><span class="sr-only">삭제</span>
                  		</button><br><br>
                  	</div>
                  	</c:forEach>
                  	<div class="hidden">
                      <div class="col-xs-2 input-file-box model">
                        <input type="file" data-height="100" data-default-file="" name="attach" id="attach"/>
                        <button class="btn btn-xs btn-danger btn-remove">
                          <i class="fa fa-times" aria-hidden="true"></i>
                          <span class="sr-only">삭제</span>
                        </button>
                        <button class="btn btn-xs btn-primary btn-duplicator">
                          <i class="fa fa-plus" aria-hidden="true"></i>
                          <span class="sr-only">추가</span>
                        </button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-2 input-file-box">
                        <input type="file" class="dropify" data-height="100" name="attach" id="attach" data-default-file="" />
                        <button class="btn btn-xs btn-primary btn-duplicator">
                          <i class="fa fa-plus" aria-hidden="true"></i>
                          <span class="sr-only">추가</span>
                        </button>
                      </div>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td colspan="4">
                    <div>
	                    <jsp:include page="/WEB-INF/jsp/include/scadmin/editor.jsp" flush="false" />
	                </div>
                  </td>
                </tr>
              </tbody>
            </table>
            <!-- //table -->
          </div>
        </div>
        </form>
        <div class="row">
          <div class="col-sm-4 text-left">
          	<c:if test="${not empty result}">
            	<!-- <a class="btn btn-danger" role="button"><i class="fa fa-trash" aria-hidden="true"></i> 삭제</a> -->
            </c:if>
          </div>
          <div class="col-sm-4 text-center">
            <a class="btn btn-default" role="button"><i class="fa fa-times" aria-hidden="true"></i> 취소</a>
            <c:if test="${empty result}"><a class="btn btn-success _addBtn" role="button"><i class="fa fa-check" aria-hidden="true"></i> 등록</a></c:if>
            <c:if test="${not empty result}"><a class="btn btn-success _modifyBtn" role="button"><i class="fa fa-check" aria-hidden="true"></i> 수정</a></c:if>
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

        $("#unlimit").click(function() {
			if ($("input:checkbox[name=unlimit]").is(":checked") == true){
				$("#endt").val("9999-12-31");
			} else {
				$("#endt").val("${result.endt}");
				<c:if test="${result.endt eq '9999-12-31'}">
				$("#endt").val("");
				</c:if>
			}
		});

		$('#fileupload').fileupload({
            url: '/upload/myFile',
            dataType: 'json',
            async:false,
            done: function (e, data) {
                createFileArea(data.result.fileId, data.result.fileName);
            }
        }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');/*jquery 파일 업로드 끝*/

        $("#files").on("click", "button", function() { //파일 삭제 버튼을 눌렀을때.
            var $parent = $(this).parent();
            $parent.remove();
            if($("[name='fileId']").length < 1) {
                $("#files").hide();
            }
        });

        $("._addBtn").click(function() {
        	jQuery.ajaxSettings.traditional = true;
            var frm = $("form[name=editor_form]");
            
            var validationChk = fnValidateCheck(frm);
			
    		if (!validationChk)	return;
            
    		if($('#stdt').val() > $('#endt').val()){
    			alert('접수기간을 정확히 입력하세요.');
    			return false;
    		}
    		
    		if (!confirm("등록 하시겠습니까?")) return;
    		
    		if ($("input:checkbox[name=fix]").is(":checked") == true){
    			console.log("Y");
    			$("#fixynChk").val("Y");
            }else{
            	console.log("N");
            	$("#fixynChk").val("N");
            }
    		
    		$('#content').val(Editor.getContent());
    		var fnApplyCallback = function(objResponse, statusText, xhr, $from) {
    			if (statusText == "success") {
    				if (objResponse["result"] == 'success') {
    					alert("등록 되었습니다.");
    					$("._backForm").submit();
    				} else {
    					alert("데이터 전송 중 오류가 발생하였습니다.");
    				}
    			} else { 
    				alert("데이터 전송 중 오류가 발생하였습니다 .");
    			}
    		}

    		var options = {
    			url : "./add.json",
    			type : "post",
    			dataType : 'json',
    			success : fnApplyCallback,
    			error : function(data, result, resultMsg) {
    				alert("데이터 전송 중 오류가 발생하였습니다.");
    			}
    		};
    		frm.ajaxSubmit(options);
        });

        $(".btn-default").click(function() {
            $("._backForm").submit();
        });

        <c:if test="${not empty result}">
        $("._modifyBtn").click(function() {
            jQuery.ajaxSettings.traditional = true;
            var frm = $("form[name=editor_form]");
            
            var validationChk = fnValidateCheck(frm);
			
    		if (!validationChk)	return;
    		
    		if (!confirm("수정 하시겠습니까?")) return;
    		
    		if ($("input:checkbox[name=fix]").is(":checked") == true){
    			console.log("Y");
    			$("#fixynChk").val("Y");
            }else{
            	console.log("N");
            	$("#fixynChk").val("N");
            }
    		
    		$('#content').val(Editor.getContent());
    		var fnApplyCallback = function(objResponse, statusText, xhr, $from) {
    			if (statusText == "success") {
    				if (objResponse["result"] == 'success') {
    					alert("수정 되었습니다.");
    					//fnPage("./list");
    					$("._backForm").submit();
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
        </c:if>

        var config = {
            txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
            txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
            txService: 'sample', /* 수정필요없음. */
            txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
            initializedId: "", /* 대부분의 경우에 빈문자열 */
            wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
            form: 'editor_form'+"", /* 등록하기 위한 Form 이름 */
            txIconPath: "/resources/js/daumeditor/images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
            txDecoPath: "/resources/js/daumeditor/images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
            canvas: {
                exitEditor:{
                },
                styles: {
                    color: "#123456", /* 기본 글자색 */
                    fontFamily: "굴림", /* 기본 글자체 */
                    fontSize: "10pt", /* 기본 글자크기 */
                    backgroundColor: "#fff", /*기본 배경색 */
                    lineHeight: "1.5", /*기본 줄간격 */
                    padding: "8px" /* 위지윅 영역의 여백 */
                },
                showGuideArea: false
            },
            events: {
                preventUnload: false
            },
            sidebar: {
                attachbox: {
                    show: false,
                    confirmForDeleteAll: true
                },
                capacity: {
                	available:10145728,
                	filemaximum:null,
                	filter: {
                		movie:{title: "movie file", maximum: 3145728, extensions: ",wmv,mpg,avi,"},
                		sound:{title: "sound file", maximum: 3145728, extensions: ",mp3,wav,ogg,wma,mp4,ape,wmv,asf,ra,ram,"}
                	},
                	maximum:10145728,
                	show:true,
                	uploaded:0,
                	uploadedFileNum:0
                }
            },
            size: {
                contentWidth: 750 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
            }
        };

        EditorJSLoader.ready(function(Editor) {
            var editor = new Editor(config);
        });
    });

    function validForm(editor) {
        var titile = $("#inputTitle").val();
        if(titile == undefined || titile == "") {
            alert("제목을 입력하세요.");
            return false;
        }

        var validator = new Trex.Validator();
        var content = editor.getContent();
        if (!validator.exists(content)) {
            alert('내용을 입력하세요');
            return false;
        }

        return true;
    }

    function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        $("[name='fileId']").each(function() {
            var fileIdInput = document.createElement('input');
            fileIdInput.type = 'hidden';
            fileIdInput.name = 'uploadFileId';
            fileIdInput.value = $(this).val();
            form.createField(fileIdInput);
        });

        var title = document.getElementById("inputTitle").value;
        var titleInput = document.createElement('input');
        titleInput.type = 'hidden';
        titleInput.name = 'title';
        titleInput.value = title;
        form.createField(titleInput);

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.style.display = "none";
        textarea.name = 'content';
        textarea.value = content;
        form.createField(textarea);
        return true;
    }

    function createFileArea(fileId, fileName) {
        $("#files").show();
        $("#files").append("<p><input type='hidden' name='fileId' value='" + fileId + "'><span>" + fileName + "</span><button type='button' class='close' aria-hidden='true'>×</button></p>");
    }
    
    function fnRemove(_obj, i){
    	var re = $(_obj).parent();
    	document.editor_form.delId.value += i+",";
		re.remove();
    }

    <c:if test="${not empty result}">
        Editor.modify({
        	"content": '${fn:replace(result.content, "'", "")}'
        });

        <c:forEach var="file" items="${fileList}">
            createFileArea('${file.id}', '${file.originName}');
        </c:forEach>
    </c:if>
</script>
  </body>
</html>