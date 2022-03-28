<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="북측관광" scope="request"/>
<c:set var="CLASS" value="tourism" scope="request"/>
<c:set var="MENUNM" value="관광사업" scope="request"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
	  <meta charset="UTF-8">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
	  <meta name="format-detection" content="telephone=no">
	  <title>현대아산</title>
	  <jsp:include page="/WEB-INF/jsp/include/library.jsp" flush="false" />
	  <link rel="stylesheet" href="/resources/css/tourism.css">
<style type="text/css">
</style>
</head>
  <body class="tourism">
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
                <h3>북측관광</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
            </div>
            <div class="mobile-swiper--link">
              <div class="inner">
                <div class="mobile-swiper">
                  <div class="swiper-wrapper col06">
                    <a href="col05" class="swiper-slide ">금강산</a>
                    <a href="/tourism/tourism_0102" class="swiper-slide ">개성</a>
                    <a href="/tourism/tourism_0103" class="swiper-slide ">백두산</a>
                    <a href="/tourism/tourism_0104" class="swiper-slide ">평양</a>
                    <a href="/tourism/tourism_0106" class="swiper-slide current">기타</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper-tab -->
            <div class="inner">
              <div class="tab col02">
                <a href="/" class="active">묘향산</a>
                <a href="/">칠보산</a>
              </div>
            </div>

            <div class="tab-content">

              <!-- 묘향산 -->
              <div class="type-myohyang">
                <h4 class="hide-element">묘향산</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">우리나라 5대 명산! 묘향산</strong>
                  <div class="tourism-info-dec">
                    <strong>묘향산은 옛부터 5대 명산의 하나로, 조선 8경 중의 하나로 손꼽혀 왔습니다. </strong>
                    <p>묘향산은 해발 1,909m의 비로봉을 주봉우리로 1,500m를 넘는 봉우리들로 이루어져있습나다. 그 가운데서도 묘향천을 끼고 있는 상원동과 만폭동, 비로봉일대는 자연풍치가 유달리 뛰어납니다. 묘향산이란 이름은 향나무, 측백나무 등의 숲이 울창하여 그 향기가 산 전체를 덮고 있으며, 산 모양이 매우 기묘하고 신비로운 데서 유래했다고 합니다.</p>
                  </div>
                </div>

                <div class="overview tourism-info-vs"></div>

                <div class="inner">
                  <div class="heading">
                      <h5>주요관광지</h5>
                  </div>
                  <ul class="tourism-place">
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/myohyang_place01.jpg" alt="">
                        <figcaption>만폭동</figcaption>
                      </figure>
                      <p>만폭동은 만개의 폭포가 있다하리 만큼 크고 작은 폭포들이 많은데서 유래되었습니다. 만폭동의 서막을 알린다는 서곡폭포와 아름답고 장쾌한 무릉폭포, 하늘의 선녀들이 내려와 몸을 감추고 날다가 올랐다는 은선폭포, 유선폭포, 은정폭포, 비선폭포, 묘향산 8담을 비롯한 수많은 담소들이 이 골짜기에 있습니다. 그리고 주위의 풍치와 어울려 절경을 이루는 만폭대, 장수바위, 비선대, 단군대를 비롯한 전망이 좋은 기암들도 많습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/myohyang_place02.jpg" alt="">
                        <figcaption>상원동</figcaption>
                      </figure>
                      <p>상원동은 오래된 절인 상원암이 있어 불리워지게 된 곳인데 여기에는 웅장하고 화려한 룡연폭포를 비롯하여 금강폭포, 대하폭포, 산주폭포, 천신폭포와 푸른 담소들, 바위 위에 앉았던 호랑이가 상원암으로 오르는 길손들을 인도해 주었다는 인호대, 법왕봉 등 전망이 좋은 기암들과 봉우리들이 있습니다. 또한 능인암을 비롯한 옛 건물들이 인호대와 상원암, 세 개의 폭포가 조화를 이루어 경치가 아름답습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/myohyang_place03.jpg" alt="">
                        <figcaption>천태동</figcaption>
                      </figure>
                      <p>묘향산 최고봉인 비로봉에는 천태동 코스와 사자폭포, 칠성폭포부터 올라가는 칠성동 코스가 있습니다. 천태동 코스에는 천태폭포, 이선남폭포(형제폭포), 사자폭포 칠성폭포 등 이름이 알려진 폭포들과 금강굴 하비로암의 사적 등이 있습니다. 등산 코스는 왕복 약 25km, 이 코스는 묘향산 등산코스 중 가장 장거리이고 험하기 때문에 하루 등산코스로는 무리가 따릅니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/myohyang_place04.jpg" alt="">
                        <figcaption>보현사</figcaption>
                      </figure>
                      <p>보현사는 고려시대(1,042년)에 세워진 사찰로 현재 북측의 불교계를 대표하는 사찰이며, 경내에는 팔만대장경과 목판 활자가 보존되어 있습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/myohyang_place05.jpg" alt="">
                        <figcaption>국제친선전람관</figcaption>
                      </figure>
                      <p>1978년에 개관된 국제친선전람관은 연건평 2만㎡의 전통 양식으로 건축된 6층 규모의 2개 건물로 구성되어 있고 전시관 내부에는 약 50여개의 선문 전시관으로 이루어져 있어 다양한 볼거리가 많은 곳입니다.</p>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- 칠보산 -->
              <div class="type-chilbo">
                <h4 class="hide-element">칠보산</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">일곱가지 보물이 묻혀 있다는 전설을 가진 칠보산</strong>
                  <div class="tourism-info-dec">
                    <strong>칠보산은 일곱가지 보물이라는 뜻으로 봄에는 꽃동산, 여름에는 녹음산, 가을에는 홍화산, 겨울에는 설백산이라고 불린다.</strong>
                    <p>칠보산은 함경북도 명천군 일대에 걸친 산, 계곡으로 이루어져 있으며 면적이 약 250㎢정도입니다. 칠보산은 땅에 솟아 오른 아름다운 7봉에서 유래되었는데 6봉은 육지에 있고 1봉은 바닷가에 있습니다. 일찍이 관북8경으로 알려진 곳으로 산 이름 그대로 칠보처럼 아름답고 자연경관이 수려합니다. 칠보라는 말은 이 세상에서 가장 아름다고, 희소하고, 진귀한 것이라는 의미로 사용되고 있습니다. 칠보산은 여러 특징 있는 풍경을 형성하고 있으며 관광지가 내칠보, 외칠보, 해칠보로 나누어져 있습니다.</p>
                  </div>
                </div>
  
                <div class="overview tourism-info-vs"></div>
  
                <div class="inner">
                  <div class="heading">
                      <h5>주요관광지</h5>
                  </div>
                  <ul class="tourism-place">
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/chilbo_place01.jpg" alt="">
                        <figcaption>내칠보</figcaption>
                      </figure>
                      <p>내칠보는 최고봉인 덕산(906m), 옥대봉, 만사봉, 노적봉 등의 봉우리와 만월대, 개심대, 금강담, 구룡소 등의 풍경과 많은 동굴 등이 있으며 계곡마다 침엽수, 활엽수림이 우거져 있고 맑은 계곡수는 주위 산림, 기암과 조화를 이룹니다. <br>
                          내칠보 내에는 개심사라는 사찰이 있는데 개심사는 발해시대 826년에 세워져, 그 후 몇 번 보수되었고 현재의 대웅전은 1853년에 재건축 것입니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/chilbo_place02.jpg" alt="">
                        <figcaption>외칠보</figcaption>
                      </figure>
                      <p>내산동에서 노적봉에 이르는 구간에 내칠보로부터 해칠보로 내려가는 16㎞에 걸친 산세가 아름다운 구간이 외칠보입니다. 외칠보는 내칠보의 수려하고 당당한 모습에 비해 높게 솟아있는 기묘한 봉우리들이 많습니다. 외칠보에는 적릉봉과 봉서암, 학무대, 맥수봉의 박쥐굴, 을녀암, 장군암 등의 명승이 있는 심원탑 구역과 노적봉과 6단 폭포 등이 있습니다. 외칠보 지역의 동해안 황진리에는 &lt;황진온천&gt;(라듐)이 있으며 휴양소가 있습니다. </p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/chilbo_place03.jpg" alt="">
                        <figcaption>해칠보</figcaption>
                      </figure>
                      <p>북쪽 어랑대에서 남쪽 무수대에 이르기까지 해안선에 이르는 섬, 절벽, 기암괴석, 해변이 이어지는 곳이 해칠보입니다. 특히, 유람선을 이용해서 관광을 즐길 수 있는 경관 지역은 북쪽의 솔섬지구와 남쪽의 코끼리바위 달문 지구가 있습니다. </p>
                    </li>
                  </ul>
                </div>

              </div>
            
            </div>
            <!-- //tab + tab-content -->
          </div>
          <!-- //contents -->
        </div>
        <!-- //container -->
      </div>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="false" />
    </div>
	<script type="text/javascript" src="/resources/libs/swiper/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<script>
    ;(function(FuncObj, $){
      
      FuncObj.bgScrollMove();
      
    })(FuncObj, jQuery);
    </script>
  </body>
</html>