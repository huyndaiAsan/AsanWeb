<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>특성분석센터</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/contents.css">
</head>
<body>
<div class="popup-newsletter" style="margin-left: 7px;">
	<h1 class="hide">뉴스레터</h1>
    <div class="popup-body">

        <div class="banner-newsletter">
            <p><span class="date">${param.bannerText1}</span>Vol.<span class="vol">${param.volNum}</span><p>
        </div>

        <div class="li-newsletter-main">
            <div class="title-zone"><h5>${param.title}</h5>
                <c:if test="${param.fileId ne '0'}">
                <%-- <a class="btn btn-img btn-xs btn-pdf" href="/news/letter/download?fileId=${param.fileId}">PDF</a> --%>
                <a class="btn btn-img btn-xs btn-pdf" href="/news/letter/letterDownload?id=${param.id}">PDF</a>
                </c:if>
            </div>
            <div class="content-zone">
                <img src="<aac:imageUrl fileId="${param.thumnailId}"/>">
                <div style="word-break: break-all;">${param.content}</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
