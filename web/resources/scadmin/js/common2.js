//페이지 이동
function fnPage(_url) {
    var frm = document.editor_form;
    frm.action = _url;
    frm.method = "get";
    frm.submit();
}