<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
<c:set var="CLASS" value="construction" scope="request"/>
<c:set var="MENUNM" value="건설사업" scope="request"/>
<c:choose>
	<c:when test="${gubun eq '1' }">
		<c:set var="FM" value="토목" scope="request"/>
		<c:set var="SM" value="한민족이 함께할 미래의 땅을 창조하는 희망의 기술 모두가 꿈꾸는 미래의 땅을 일구겠습니다." scope="request"/>
	</c:when>
	<c:when test="${gubun eq '2' }">
		<c:set var="FM" value="건축" scope="request"/>
		<c:set var="SM" value="민족 통일의 가슴벅찬 미래, 현대아산이 이끌어갑니다." scope="request"/>
	</c:when>
	<c:when test="${gubun eq '3' }">
		<c:set var="FM" value="플랜트" scope="request"/>
		<c:set var="SM" value="민족 통일의 가슴벅찬 미래, 현대아산이 이끌어갑니다." scope="request"/>
	</c:when>
	<c:otherwise>
	
	</c:otherwise>
</c:choose>  


<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/${CLASS }.css">
<style type="text/css">
</style>
</head>
  <body class="${CLASS }">
    <div class="wrap">
      <div class="wrap__row">
      	<jsp:include page="/WEB-INF/jsp/include/header.jsp" flush="false" />
        <!-- //header -->
      </div>
      <div class="wrap__row wrap__row--height-full">
        <div class="container">
          <div class="visual">
            <h2>${MENUNM }</h2>
          </div>
          <!-- //visual -->
	      <jsp:include page="/WEB-INF/jsp/include/menuBar.jsp" flush="false" />
          
          <!-- //content-top-bar -->
          <div class="contents">
            <div class="inner">
              <div class="heading">
                <h3>${FM }</h3>
                <em>${SM }</em>
              </div>
              <!-- //heading -->
              <c:choose>
				<c:when test="${gubun eq '1' }">
					<div class="gallery">
		                <div class="gallery-view">
		                  <img src="/resources/images/construction/img_construction_01_gallery_01.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_01_gallery_02.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_01_gallery_03.jpg" alt="">
		                  <div class="gallery-view__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                  <div class="gallery-view__desc">
		                    <p>동탄신도시택지개발</p>
		                    <p>서부트럭터미널앞지하차도</p>
		                    <p>영산강강변도로</p>
		                  </div>
		                </div>
		                <div class="gallery-list">
		                  <div class="gallery-list__mask">
		                    <ul></ul>
		                  </div>
		                  <div class="gallery-list__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                </div>
		                <div class="gallery-desc">
		                  <strong class="only-noto-kr">북측 개성공단 개발사업을 성공적으로 수행한 경험으로 국내 토목공사에서도 높은 성과 기록</strong>
		                  <p>상상하였던 모습을 눈앞에 펼쳐 보일 수 있도록 기초를 다지는 토목 분야는 무에서 유를 창조하는 분야입니다. 현대아산은 안성산업단지 조성공사, 제주 휴양형 주거단지 조성, 서부트럭터미널 등 전국 7개 도시에서 부지조성공사를 수행하였으며 낙동강 살리기 41공구 등 다양한 분야의 공사를 성공적으로 마무리하였습니다. 국토의 지도를 바꾸는 건설 역사의 한 페이지를 장식하고 있는 현대아산. 대한민국의 품격을 올리고 창의성을 향상시킵니다.</p>
		                </div>
		              </div>
				</c:when>
				<c:when test="${gubun eq '2' }">
					<div class="gallery">
		                <div class="gallery-view">
		                  <img src="/resources/images/construction/img_construction_02_gallery_01.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_02_gallery_02.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_02_gallery_03.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_02_gallery_04.jpg" alt="">
		                  <div class="gallery-view__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                  <div class="gallery-view__desc">
		                    <p>현대엘리베이터초고속테스트타워</p>
		                    <p>코레일유통</p>
		                    <p>현대지식산업센터</p>
		                    <p>현대인재개발원</p>
		                  </div>
		                </div>
		                <div class="gallery-list">
		                  <div class="gallery-list__mask">
		                    <ul></ul>
		                  </div>
		                  <div class="gallery-list__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                </div>
		                <div class="gallery-desc">
		                  <strong class="only-noto-kr">우수한 기술력을 바탕으로  대형건설회사로 도약</strong>
		                  <p>현대아산은 다년간 축적된 시공노하우를 토대로 다수의 국내 건축사업에 참가하여 대형건설사로서 도약하고 있습니다. 또한, 코레일유통 본사사옥, 한국관광공사 신사옥, 케이디파워 주공장, 하이원워터월드, 강릉스피드스케이팅 경기장 등 업무시설, 물류센터, 중대형공장, 체육시설 건축사업에도 참여하여 높은 기량을 펼치고 있습니다. 우수한 기술력을 바탕으로 편리하면서도 아름다운 건축공간, 특별하면서도 조화를 이루는 시공을 통하여 고객만족을 극대화하고 있습니다.</p>
		                </div>
		              </div>
				</c:when>
				<c:when test="${gubun eq '3' }">
					<div class="gallery">
		                <div class="gallery-view">
		                  <img src="/resources/images/construction/img_construction_03_gallery_01.jpg" alt="">
		                  <img src="/resources/images/construction/img_construction_03_gallery_02.jpg" alt="">
		                  <div class="gallery-view__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                  <div class="gallery-view__desc">
		                    <p>개성가로등공사</p>
		                    <p>개성정배수장</p>
		                  </div>
		                </div>
		                <div class="gallery-list">
		                  <div class="gallery-list__mask">
		                    <ul></ul>
		                  </div>
		                  <div class="gallery-list__button">
		                    <button type="button" class="prev-button hide-text">이전</button>
		                    <button type="button" class="next-button hide-text">다음</button>
		                  </div>
		                </div>
		                <div class="gallery-desc">
		                  <strong class="only-noto-kr">삶의 편안함을 이루겠습니다.</strong>
		                  <p>현대아산은 개성공단 기반시설 조성을 통해 축적된 노하우를 바탕으로 정배수처리장/폐수/폐기물/변전소건설/집단에너지공급시설 등 삶의 기본이 되는 인프라 구축에 기술력을 확보해 나아가고 있습니다.</p>
		                </div>
		              </div>
				</c:when>
				<c:otherwise>
				
				</c:otherwise>
			</c:choose>  
              <!-- //gallery -->
              <div class="image-board col03">
                <div class="image-board__inner clearfix">
                  <c:forEach var="result" items="${resultList}">
	                  <a href="#" onclick="fnView('${result.id }');">
	                  	${result.complite eq 'Y' ? "<i class='state02'>완료</i>" : "<i class='state01'>진행중</i>"}
	                    <div class="img-mask">
	                    	<c:if test="${not empty result.defaultImage }"><img src="${result.defaultImage }" alt=""></c:if>
	                    </div>
	                    <p>${result.title}</p>
	                    <span><fmt:formatDate pattern="yyyy-MM-dd" value="${result.regDate}" /></span>
	                  </a>
                  </c:forEach>
                </div>
              </div>
              <div class="pagination">
                <aac:frontpaging pager="${pager}" />
                <form action="./list" class="_bbsForm" method="post">
			        <input type="hidden" name="pageNo" value="${pager.pageNo}" />
			    </form>
              </div>
              <!-- //pagination -->
            </div>
          </div>
          <!-- //contents --> 
        </div>
        <!-- //container -->
      </div>
      <form action="" name="searchFrm" id="searchFrm">
         <input type="hidden" name="pageNo" id="pageNo2" value="${pager.pageNo}" />
         <input type="hidden" name="boardId" id="boardId" value="" />
         <input type="hidden" name="gubun" id="gubun" value="${gubun }" />
       </form>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
  <script type="text/javascript">
  $(function() {
      $(".pagination a").click(function(e) {
          e.preventDefault();
          var clkPageNo = $(this).attr("data-pageno");
          if(!Number(clkPageNo)) {
              return;
          }
          $("[name='pageNo']", "#searchFrm").val(clkPageNo);
          $("#searchFrm").submit();
      });

  });
    
    function fnView(s){
    	$('#boardId').val(s);
    	$("#searchFrm").attr("action", "./read");
    	$("#searchFrm").submit();
    }
    
    function fnSearch(){
    	$('#pageNo2').val(1);
    	$("#searchFrm").attr("action", "./list");
    	$("#searchFrm").submit();
    }
</script>
</html>