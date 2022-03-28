<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="아산역사관" scope="request"/>
<c:set var="CLASS" value="promotion" scope="request"/>
<c:set var="MENUNM" value="홍보센터" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/promotion.css">
	  <link rel="stylesheet" href="/resources/css/owl.carousel.css">
<style type="text/css">
</style>
</head>
  <body class="promotion">
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
          <div class="contents history-gallery">
            <div class="gallery">
              <div class="owl-carousel owl-theme">
                <picture n="1">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history01.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history01_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history01.jpg" alt="">
                  <p>
                    <em>1989.1.23</em>
                    <strong>남측 기업인 최초로 북측 공식 방문</strong>
                    <span>정주영 명예회장은 분단 이후 남측 기업인으로서 북측을 공식 방문했다. 정 명예회장은 북측과 『금강산 및 시베리아 공동개발에 관한 의정서』를 체결했다. 의정서 5조에는 "동부지구 군사분계선을 통과해 금강산을 왕래하도록 한다" 라고 합의했고, 이는 훗날 금강산 육로관광의 단초가 되었다.</span>
                  </p>
                </picture>
                <picture n="2">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history02.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history02_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history02.jpg" alt="">
                  <p>
                    <em>1998.6.16</em>
                    <strong>소떼방북</strong>
                    <span>정주영 명예회장은 분단의 상징인 판문점을 경유해, 500마리 소떼와 함께 북측을 방문했다. 정 명예회장의 소떼방북은 전 세계에 금강산관광을 비롯해 남북경협시대의 서막을 알리는 신호가 되었다.</span>
                  </p>
                </picture>
                <picture n="3">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history03.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history03_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history03.jpg" alt="">
                  <p>
                    <em>1998.6.16</em>
                    <strong>소떼방북</strong>
                    <span>정주영 명예회장은 분단의 상징인 판문점을 경유해, 500마리 소떼와 함께 북측을 방문했다. 정 회장의 소떼방북은 전 세계에 금강산관광을 비롯해 남북경협시대의 서막을 알리는 신호가 알렸다.</span>
                  </p>
                </picture>
                <picture n="4">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history04.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history04_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history04.jpg" alt="">
                  <p>
                    <em>1998.10.30</em>
                    <strong>정주영 명예회장-김정일 국방위원장 1차 면담</strong>
                    <span>정주영 명예회장은 1998년 10월 27일 501마리 소떼를 이끌고, 2차 소떼방북을 진행했다. 방북 길에 나선 정주영 명예회장과 정몽헌 회장은 북측 백화원초대소에서 김정일 국방위원장과 첫 면담을 진행했다. 이 면담을 통해 현대가 추진 중인 남북경협사업은 급물살을 타게 되었다.</span>
                  </p>
                </picture>
                <picture n="5">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history05.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history05_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history05.jpg" alt="">
                  <p>
                    <em>1998.10.30</em>
                    <strong>정주영 명예회장-김정일 국방위원장 1차 면담</strong>
                    <span>정주영 명예회장은 1998년 10월 27일 501마리 소떼를 이끌고, 2차 소떼방북을 진행했다. 방북 길에 나선 정주영 명예회장과 정몽헌 회장은 북측 백화원초대소에서 김정일 국방위원장과 첫 면담을 진행했다. 이 면담을 통해 현대가 추진 중인 남북경협사업을 급물살을 타게 되었다.</span>
                  </p>
                </picture>
                <picture n="6">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history06.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history06_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history06.jpg" alt="">
                  <p>
                    <em>1998.11.18</em>
                    <strong>금강산관광선 첫 출항</strong>
                    <span>강원도 동행항에서 28,000톤급 현대 금강호가 남측 관광객 882명을 태우고 금강산을 향해 첫 출항을 했다. 정주영 명예회장은 기념사에서 "금강산 관광사업을 시작으로 남북은 서로 협력해 남북 모두에게 이익이 되는 여러 경협사업을 지속적으로 확대, 발전시켜 나갈 것"이라고 밝혔다.</span>
                  </p>
                </picture>
                <picture n="7">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history07.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history07_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history07.jpg" alt="">
                  <p>
                    <em>1999.2.5</em>
                    <strong>현대아산 창립</strong>
                    <span>현대그룹은 금강산 관광개발사업과 개성공업지구 건설사업 등 현대그룹이 추진하는 남북경협사업을 전담하기 위해 현대아산을 창립했다. 정주영 명예회장은 기념사를 통해 "남북경협사업은 남북 모두에게 이익이 되도록 한다는 원칙 아래 추진되고 있다"며 "이를 통해 한반도의 평화와 화해, 동반자적 협력시대를 열어갈 것임"을 다짐했다. </span>
                  </p>
                </picture>
                <picture n="8">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history08.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history08_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history08.jpg" alt="">
                  <p>
                    <em>1999.9.28-29</em>
                    <strong>제1차 통일농구대회</strong>
                  </p>
                </picture>
                <picture n="9">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history09.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history09_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history09.jpg" alt="">
                  <p>
                    <em>1999.9.29</em>
                    <strong>평양 류경정주영 체육관 착공식</strong>
                  </p>
                </picture>
                <picture n="10">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history10.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history10_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history10.jpg" alt="">
                  <p>
                    <em>1999.10.1</em>
                    <strong>정주영 명예회장-김정일 국방위원장 2차 면담</strong>
                    <span>정주영 명예회장은 북측 김정일 위원장과 2차 면담을 진행했다. 이 자리에서 금강산관광에 대한 사업논의와 공단사업 등 경제협력사업 확대에 대한 논의가 이뤄졌다. 방북기간 중 현대는 북측과 '경제특구 공단건설 합의서'를 체결했고, 향후 개성공업지구 개발사업의 첫 출발점이 되었다.</span>
                  </p>
                </picture>
                <picture n="11">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history11.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history11_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history11.jpg" alt="">
                  <p>
                    <em>1999.12.23</em>
                    <strong>제2차 통일농구대회 (서울)</strong>
                  </p>
                </picture>
                <picture n="12">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history12.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history12_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history12.jpg" alt="">
                  <p>
                    <em>1999.12.23</em>
                    <strong>제2차 통일농구대회 (서울)</strong>
                    </p>
                </picture>
                <picture n="13">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history13.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history13_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history13.jpg" alt="">
                  <p>
                      <em>2000.5.24</em>
                      <strong>금강산 고성항 부두 준공식</strong>
                      <span>정몽헌 회장이 완공된 고성항 부두를 둘러보고 있다. 고성항 부두는 30,000톤급 선박 4척이 동시 접안이 가능하다.</span>
                    </p>
                </picture>
                <picture n="14">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history14.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history14_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history14.jpg" alt="">
                  <p>
                      <em>2000.8.22</em>
                      <strong>경제협력사업에 관한 합의서 체결</strong>
                      <span>정몽헌 회장은 북측 아태와 민경련과 개성공업지구 개발에 대한 합의서를 체결하면서 '경제협력사업에 관한 합의서'를 체결했다. 북측 SOC 사업에 대한 포괄적인 사업권을 확보했으며, 우선적으로 철도, 통신, 전력, 주요명승지관광 등 7대 SOC사업의 세부 합의서도 체결했다.</span>
                    </p>
                </picture>
                <picture n="15">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history15.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history15_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history15.jpg" alt="">
                  <p>
                      <em>2000.9.20~10.1</em>
                      <strong>정몽헌 회장, 북측 주요지역 답사</strong>
                      <span>정몽헌 회장은 백두산, 금강산 내금강, 개성 등 북측 주요지역을 답사하며, 북측과 구체적인 사업에 대한 협의를 지속해 나갔다.</span>
                    </p>
                </picture>
                <picture n="16">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history16.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history16_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history16.jpg" alt="">
                  <p>
                      <em>2000.9.30</em>
                      <strong>김정일 국방위원장 금강산 시찰</strong>
                      <span>정몽헌 회장과 김정일 국방위원장은 금강산 현지에서 5차 면담을 진행했다. 김정일 국방위원장은 정몽헌 회장과 동행하며 현대가 건설한 부두, 방파제, 해상호텔, 문화회관 등 주요 시설을 시찰했다.</span>
                    </p>
                </picture>
                <picture n="17">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history17.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history17_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history17.jpg" alt="">
                  <p>
                      <em>2002.4.28</em>
                      <strong>제4차 이산가족상봉(금강산)</strong>
                    </p>
                </picture>
                <picture n="18">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history18.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history18_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history18.jpg" alt="">
                  <p>
                      <em>2002.9.18</em>
                      <strong>경의선, 동해선 철도&middot;도로 착공식</strong>
                    </p>
                </picture>
                <picture n="19">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history19.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history19_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history19.jpg" alt="">
                  <p>
                      <em>2003.2.14</em>
                      <strong>금강산 육로 시범관광</strong>
                    </p>
                </picture>
                <picture n="20">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history20.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history20_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history20.jpg" alt="">
                  <p>
                      <em>2003.2.14</em>
                      <strong>금강산 육로 시범관광</strong>
                    </p>
                </picture>
                <picture n="21">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history21.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history21_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history21.jpg" alt="">
                  <p>
                    <em>2003.6.30</em>
                    <strong>개성공업지구 착공식</strong>
                  </p>
                </picture>
                <picture n="22">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history22.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history22_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history22.jpg" alt="">
                  <p>
                    <em>2003.6.30</em>
                    <strong>개성공업지구 착공식</strong>
                  </p>
                </picture>
                <picture n="23">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history23.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history23_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history23.jpg" alt="">
                  <p>
                      <em>2003.9.1</em>
                      <strong>금강산 육로관광 본격화</strong>
                    </p>
                </picture>
                <picture n="24">
                    <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history24.jpg">
                    <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history24_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history24.jpg" alt="">
                  <p>
                      <em>2003.10.6</em>
                      <strong>평양 류경정주영체육관 개관식</strong>
                    </p>
                </picture>
                <picture n="25">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history25.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history25_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history25.jpg" alt="">
                  <p>
                      <em>2003.10.6</em>
                      <strong>평양 류경정주영체육관 개관식</strong>
                    </p>
                </picture>
                <picture n="26">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history26.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history26_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history26.jpg" alt="">
                  <p>
                    <em>2004.6.30</em>
                    <strong>개성공업지구 시범단지 준공식</strong>
                  </p>
                </picture>
                <picture n="27">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history27.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history27_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history27.jpg" alt="">
                  <p>
                    <em>2004.7.2</em>
                    <strong>금강산호텔 개관식</strong>
                  </p>
                </picture>
                <picture n="28">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history28.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history28_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history28.jpg" alt="">
                  <p>
                    <em>2004.7.2</em>
                    <strong>금강산관광 6주년 기념식</strong>
                    </p>
                </picture>
                <picture n="29">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history29.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history29_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history29.jpg" alt="">
                  <p>
                      <em>2004.12.15</em>
                      <strong>개성공업지구 첫제품 생산식</strong>
                    </p>
                </picture>
                <picture n="30">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history30.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history30_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history30.jpg" alt="">
                  <p>
                      <em>2005.6.8</em>
                      <strong>관광객 100만명 돌파 기념 'KBS 열린 음악회'</strong>
                    </p>
                </picture>
                <picture n="31">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history31.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history31_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history31.jpg" alt="">
                  <p>
                      <em>2005.8.26</em>
                      <strong>개성 시범관광</strong>
                    </p>
                </picture>
                <picture n="32">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history32.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history32_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history32.jpg" alt="">
                  <p>
                    <em>2005.8.31</em>
                    <strong>금강산 이산가족면회소 착공식</strong>
                  </p>
                </picture>
                <picture n="33">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history33.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history33_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history33.jpg" alt="">
                  <p>
                      <em>2006.4.28</em>
                      <strong>금강산 윤이상 음악회</strong>
                    </p>
                </picture>
                <picture n="34">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history34.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history34_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history34.jpg" alt="">
                  <p>
                    <em>2006.5.27</em>
                    <strong>금강산 내금강관광 답사</strong>
                  </p>
                </picture>
                <picture n="35">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history35.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history35_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history35.jpg" alt="">
                  <p>
                      <em>2007.5.17</em>
                      <strong>남북철도 연결구간 개통식</strong>
                    </p>
                </picture>
                <picture n="36">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history36.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history36_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history36.jpg" alt="">
                  <p>
                      <em>2007.5.27</em>
                      <strong>금강산 내금강관광 답사</strong>
                    </p>
                </picture>
                <picture n="37">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history37.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history37_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history37.jpg" alt="">
                  <p>
                      <em>2007.10.13</em>
                      <strong>금강산신계사복원 준공식</strong>
                    </p>
                </picture>
                <picture n="38">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history38.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history38_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history38.jpg" alt="">
                  <p>
                      <em>2007.12.5</em>
                      <strong>개성관광 개시</strong>
                    </p>
                </picture>
                <picture n="39">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history39.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history39_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history39.jpg" alt="">
                  <p>
                      <em>2007.12.8</em>
                      <strong>금강산 비로봉 답사</strong>
                    </p>
                </picture>
                <picture n="40">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history40.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history40_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history40.jpg" alt="">
                  <p>
                      <em>2007.12.17</em>
                      <strong>개성공업지구 2단계 측량 및 지질조사 착수식</strong>
                    </p>
                </picture>
                <picture n="41">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history41.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history41_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history41.jpg" alt="">
                  <p>
                      <em>2008.3.17</em>
                      <strong>금강산 승용차관광 개시</strong>
                    </p>
                </picture>
                <picture n="42">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history42.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history42_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history42.jpg" alt="">
                  <p>
                      <em>2009.8.16</em>
                      <strong>현정은회장-김정일국방위원장 3차 면담</strong>
                    </p>
                </picture>
                <picture n="43">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history43.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history43_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history43.jpg" alt="">
                  <p>
                      <em>2009.9.25-10.1</em>
                      <strong>제17차 이산가족상봉(금강산)</strong>
                    </p>
                </picture>
                <picture n="44">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history44.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history44_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history44.jpg" alt="">
                  <p>
                      <em>2013.8.3</em>
                      <strong>故 정몽헌회장 10주기 추모식</strong>
                    </p>
                </picture>
                <picture n="45">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history45.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history45_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history45.jpg" alt="">
                  <p>
                      <em>2014.11.18</em>
                      <strong>금강산관광 16돌 기념식</strong>
                    </p>
                </picture>
                <picture n="46">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history46.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history46_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history46.jpg" alt="">
                  <p>
                      <em>2015.10.20-10.26</em>
                      <strong>제20차 이산가족상봉(금강산)</strong>
                    </p>
                </picture>
                <picture n="47">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history47.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history47_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history47.jpg" alt="">
                  <p>
                      <em>2017.7.27-8.3</em>
                      <strong>크루즈 전세선 운영</strong>
                    </p>
                </picture>
                <picture n="48">
                  <source class="owl-lazy" media="(min-width: 800px)" data-srcset="/resources/images/promotion/history48.jpg">
                  <source class="owl-lazy" media="(min-width: 300px)" data-srcset="/resources/images/promotion/history48_m.jpg">
                  <img class="owl-lazy" data-src="/resources/images/promotion/history48.jpg" alt="">
                  <p>
                      <em>2018.8.20-8.26</em>
                      <strong>제21차 이산가족상봉(금강산)</strong>
                    </p>
                </picture>
              </div>

              <div class="history-spot">
                <button type="button" class="history-spot-btn"><span>1989~1999</span></button>
                <button type="button" class="history-spot-btn"><span>2000~2003</span></button>
                <button type="button" class="history-spot-btn"><span>2004~2006</span></button>
                <button type="button" class="history-spot-btn"><span>2007~현재</span></button>
              </div>
              
            </div>

          </div>
          <!-- //contents -->
        </div>
        <!-- //container -->
      </div>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/bxslider/jquery.bxslider.js"></script>
	<script src="/resources/libs/carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
  </body>
  <script>
        ;(function(FuncObj, $){
          var owl_histopy = $('.owl-carousel');
          
          owl_histopy.owlCarousel({
              items:1,
              nav:true,
              dots:false,
              lazyLoad:true,
              loop:false,
              callbacks:true,
              margin:0
          });
          owl_histopy.on('changed.owl.carousel', function(property) {
              spotSelect(property.item.index);
          });

          function spotSelect(n){
            var current = Number(n === undefined ? $('.owl-item.active').index() : n);
            
            if (current < 12) {
              $('.history-spot-btn').removeClass('active').eq(0).addClass('active');
            } else if(current > 11 && current < 25) {
              $('.history-spot-btn').removeClass('active').eq(1).addClass('active');
            } else if(current > 24 && current < 34) {
              $('.history-spot-btn').removeClass('active').eq(2).addClass('active');
            } else if(current > 33) {
              $('.history-spot-btn').removeClass('active').eq(3).addClass('active');
            }
          }
          spotSelect();

          $('.history-spot-btn').on('click', function(){
            var current = $(this).index();

            switch(current){
              case 0:
              owl_histopy.trigger('to.owl.carousel', [0, 0]);
              spotSelect(0);
              break;

              case 1:
              owl_histopy.trigger('to.owl.carousel', [12, 0]);
              spotSelect(12);
              break;

              case 2:
              owl_histopy.trigger('to.owl.carousel', [25, 0]);
              spotSelect(25);
              break;

              case 3:
              owl_histopy.trigger('to.owl.carousel', [34, 0]);
              spotSelect(34);
              break;
            }
          });
    
        })(FuncObj, jQuery);
        </script>
</html>