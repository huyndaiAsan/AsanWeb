<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>메인 | 현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body class="main">
<div class="wrap gnb">
	<jsp:include page="/WEB-INF/jsp/include/header.jsp" flush="false" />
</div>
<div class="wrap" id="fullpage">
	<div class="section main1">
		<div>
			<div class="main-slide">
				<div class="slide-bx">
					<ul class="swiper-wrapper">
						<li class="swiper-slide item1">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">남북 평화와 협력의 <br class="m_block">새 길을 열다</p>
								<p class="copy__type-b">“길이 없으면 길을 찾고, <br>그래도 없다면 새 길을 닦아 나가면 된다”</p>
								<p class="copy__type-c">- 정주영 명예회장 -</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
						<li class="swiper-slide item2">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">남북 평화와 협력의 <br class="m_block">새 길을 열다</p>
								<p class="copy__type-b">“이제 남북 간 경제협력사업은 무한 경쟁을 하고 <br class="m_block">있는 세계에서 <br class="pc_block">우리 민족의 공동 발전과 번영을 <br class="m_block">이룰 수 있는 유일한 대안입니다”</p>
								<p class="copy__type-c">- 정몽헌 회장 -</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
						<li class="swiper-slide item3">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">남북 평화와 협력의 <br class="m_block">새 길을 열다</p>
								<p class="copy__type-b">“선대회장님의 유지(遺志)인 남북간의 <br class="m_block">경제협력과 공동번영은 반드시 우리 <br class="pc_block">현대그룹에 <br class="m_block">의해 꽃피게 될 것입니다”</p>
								<p class="copy__type-c">- 현정은 회장 -</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
						<li class="swiper-slide item4">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">다시가자! 금강산 </p>
								<p class="copy__type-b">금강산은 남북 간 신뢰를 높여, 남북관계 <br class="m_block">개선에 기여해 왔습니다. <br class="pc_block">금강산은 남북 민간교류와 <br class="m_block">분단의 아픔을 치유하는 이산가족상봉의 <br class="m_block">장소로서 <br class="pc_block">남북교류협력의 구심점이 <br class="m_block">되어왔습니다.</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
						<li class="swiper-slide item5">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">남북경제공동체를 <br class="m_block">꿈꾸다! 개성공단</p>
								<p class="copy__type-b">현대아산은 개성공단 개발·사업권자로서 <br class="m_block">성공적인 경제특구로 발전시켜, <br class="pc_block">경제통일을 <br class="m_block">향한 민족경제공동체의 초석이 될 수 있도록 <br class="m_block">최선을 다하겠습니다.</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
						<li class="swiper-slide item6">
							<div class="bg"></div>
							<div class="copy__area">
								<p class="copy__type-a">현대아산은 남북 평화와 <br class="m_block">공동번영을 <br class="pc_block">위해 최선을 <br class="m_block">다하겠습니다. </p>
								<p class="copy__type-b">현대아산은 남북의 하나됨과 평화를 지켜나갈 <br class="m_block">것입니다. <br class="pc_block">민족번영사업의 핵심기업으로서 <br class="m_block">세계가 주목하는 <br class="pc_block">남북공동번영의 시대를 <br class="m_block">열어나갈 것입니다.</p>
							</div>
							<div class="myp_rogress"><div class="my_bar"></div></div>
						</li>
					</ul>
					<div class="slide__progress">
						<div class="swiper-pagination"></div>
						<button type="button" class="autoplay-start">Start</button>
						<button type="button" class="autoplay-stop">Stop</button>
					</div>
					<div class="slide-btns_big">
						<button type="button" class="prev">이전</button>
						<button type="button" class="next">다음</button>
					</div>
					<div class="scroll_noti">
						<p><span>SCROLL</span></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section main2">
		<div>
			<div class="main__notice">
				<h2 class="title__type-a">NOTICE</h2>
				<div class="notice-slide">
					<ul class="swiper-wrapper">
						<c:forEach var="result" items="${noticeList}">
							<li class="swiper-slide">
								<a href="/promotion/notice/read?pageNo=1&boardId=${result.id }">
									<p class="notice-slide_tit">${result.title }</p>
									<p class="notice-slide_txt">${aac:removeHTML(result.content) }</p>
									<p class="notice-slide_day">${result.regDate }</p>
								</a>
							</li>
						</c:forEach>
					</ul>
					<div class="slide-btns">
						<button type="button" class="prev">이전</button>
						<button type="button" class="next">다음</button>
						<a href="/promotion/notice/list" class="notie-more">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section main3">
		<div>
			<div class="business__area">
				<h2 class="title__type-a">OUR BUSINESS</h2>
				<ul class="business__list">
					<li>
						<a href="/tourism/tourism_0101" class="business-item1">
							<div class="business-txt">
								<h3>관광사업</h3>
								<p>그리운 금강산에 첫 발을 내딛던 순간</p>
							</div>
						</a>
					</li>
					<li>
						<a href="/industry/industry_soc_0101" class="business-item2">
							<div class="business-txt">
								<h3>개성공단&middot;SOC사업 </h3>
								<p>남북경제협력과 상생의 허브</p>
							</div>
						</a>
					</li>
					<li>
						<a href="/build/construct/list" class="business-item3">
							<div class="business-txt">
								<h3>건설사업</h3>
								<p>민족이 함께 미래의 땅을 창조하는 기술</p>
							</div>
						</a>
					</li>
					<li>
						<a href="/taxfree_oda/taxfree_oda_01" class="business-item4">
							<div class="business-txt">
								<h3>면세&middot;ODA </h3>
								<p>남북공동번영을 위한 협력의 길</p>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section main4">
		<div>
			<div class="main__press">
				<div class="title__area">
					<h2 class="title__type-a">PRESS RELEASE</h2>
					<p class="txt__type-a">현대아산의 다양하고 생생한 소식을  <br>빠르게 전해 드립니다.</p>
				</div>
				<div class="press-slide">
					<ul class="swiper-wrapper">
						<c:forEach var="result" items="${newsList}">
							<li class="swiper-slide">
								<a href="/promotion/news/read?pageNo=1&boardId=${result.id }">
									<div class="press__img"><img src="${result.defaultImage }" alt=""></div>
									<div class="press__txt">
										<p class="press__txt-title">${result.title }</p>
										<p class="press__txt-sub">${aac:removeHTML(result.content) }</p>
									</div>
								</a>
							</li>
						</c:forEach>
					</ul>
					<div class="slide-btns">
						<button type="button" class="prev">이전</button>
						<button type="button" class="next">다음</button>
						<a href="/promotion/news/list" class="notie-more">더보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section main5">
		<div>
			<div class="main--history">
				<div class="history--area">
					<div class="history_info">
						<h2 class="title__type-a">아산 역사관</h2>
						<p class="txt__type-b">남북통일 모두의 희망을 담을 수 있는 <br>메세지를 전달 하겠습니다.</p>
					</div>
					<div class="history_img">
						<span class="history_img_item1"><img src="/resources/images/main/main_history01.jpg" alt=""></span>
						<span class="history_img_item2"><img src="/resources/images/main/main_history02.jpg" alt=""></span>
					</div>
					<div class="history__sub-txt">
						<p class="txt__type-a">“기업가는 기업활동으로 애국애족 한다.” 라는 신념으로 무에서 유를 창조해 <br>우리나라 산업 발전은 물론 대한 민국의 위상을 세계에  널리 알린 <br>故 정주영 명예회장.</p>
						<a href="/promotion/promotion_02" class="btn__type-a">자세히보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/jsp/include/footer_main.jsp" flush="false" />
	<script type="text/javascript" src="/resources/libs/jquery/jquery.form.min.js"></script>
	<script src="/resources/libs/full-page/full-page.min.js"></script>
	<script src="/resources/libs/swiper/swiper.min.js"></script>
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/main.js"></script>	
</body>
</html>