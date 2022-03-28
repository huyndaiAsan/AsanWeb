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
                  <div class="swiper-wrapper col05">
                    <a href="/tourism/tourism_0101" class="swiper-slide ">금강산</a>
                    <a href="/tourism/tourism_0102" class="swiper-slide ">개성</a>
                    <a href="/tourism/tourism_0103" class="swiper-slide current">백두산</a>
                    <a href="/tourism/tourism_0104" class="swiper-slide">평양</a>
                    <a href="/tourism/tourism_0106" class="swiper-slide">기타</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper-tab -->
            <div class="inner">
              <div class="tab col03">
                <a href="/" class="active">백두산소개</a>
                <a href="/">주요관광지</a>
                <a href="/">갤러리</a>
              </div>
            </div>

            <div class="tab-content type-baekdu">

              <!-- 백두산소개 -->
              <div>
                <h4 class="hide-element">백두산소개</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">반만년 한민족의 마음속에 담긴 最高의 靈山 백두산</strong>
                  <div class="tourism-info-dec">
                    <strong>가장 오래된 고려 초 기록에 등장한 백두산은 ‘흰눈을 머리에 이고 있다’ 고하여 백두산으로 칭하여지게 되었습니다.</strong>
                    <p>백두산은 북측 양강도 삼지연군 북위42°7', 동경 128°5' 에 위치해 있으며, 해발 2,750M로 남북한 통틀어 최고(最高)의 산이다. 예부터 단군조선의 건국설화에 나온 우리 민족의 마음속에 깊이 자리 잡은 민족의 영산(靈山)입니다. 백두산의 다른 이름들로는 종태산, 태백산, 개마산, 노백산 등이 있습니다.</p>
                  </div>
                </div>

                <div class="overview tourism-info-vs"></div>

                <div class="inner tourism-info-list">
                  <dl>
                    <dt><strong>백두산의 <br class="pc-br">역사</strong></dt>
                    <dd>
                      <p>가장 오래된 고려 초 기록에 등장한 백두산은 ‘흰눈을 머리에 이고 있다’ 고하여 백두산으로 칭하여지게 되었습니다. 백두산의 다른 이름 들로는 종태산, 태백산, 개마산, 노백산 등이 있습니다. 증보문헌비고 기록상 조선 세종 때 역관 윤사웅과 최천구, 이무림 등이 처음으로 백두산을 등정한 이래 숙종 38년 1712년 조선과 청간에 백두산정계비가 세워지게 되었습니다. 특히 백두산 일대는 3.1운동 이후 항일운동의 근거지가 되었으며 현재 북측에서는 사적으로 복원하여 ‘혁명의 성산’이라 칭하고 있습니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>백두산의 <br class="pc-br">생성 및 기후</strong></dt>
                    <dd>
                      <p>백두산의 생성연대는 6억 년 전으로 추정되고 있으며 200만 년 전부터 화산활동이 약화되기 시작하여 지금의 휴화산 형태로 존재합니다.<br> 
                        백두산 지역의 연평균 기온은 -8.3℃, 최고기온은 18℃, 최저기온은 -47.5℃입니다. 백두산에서는 9월 초부터 눈이 내리기 시작하여 6월 중순경까지 약 10개월 동안 내립니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>백두산의 <br class="pc-br">자연환경</strong></dt>
                    <dd>
                      <p>백두산은 최고봉인 장군봉을 주위로 20개(북측9개, 중국11개)의 봉우리로 형성되어 있으며 천지는 이 봉우리들로 둘러싸여 있습니다. <br>
                          천지는 둘레 19.7km, 수심 384m의 자연호로 식수로 사용할 만큼 청정한 물로 지하수보다 맑고 깨끗합니다. 천지에는 지금까지 생물이 없는 것으로 알려져 있으나 북측에 의하면 여러 종의 어류와 식물을 새로이 찾아낸 것으로 알려져 있습니다. 백두산 일대는 1980년 유네스코 국제생물권 보호구로 지정될 만큼 1,200여 종의 고산식물과 산림 식물 등 여러 가지 식물자원이 자라고 있습니다. 또한 조선범, 큰곰, 사향노루 등 55개 종의 짐승류, 137종의 조류, 5종의 파충류와 양서류 등이 서식하고 있습니다.</p>
                    </dd>
                  </dl>
                </div>
              </div>

              <!-- 주요관광지 -->
              <div>
                <h4 class="hide-element">주요관광지</h4>
                <div class="inner">
                  <ul class="tourism-place">
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place01.jpg" alt="">
                          <figcaption>백두산정상</figcaption>
                        </figure>
                        <p>백두산 정상은 산험한 산악과 수십, 수백m를 깎아지는 듯 솟아있는 암벽 그리고 태고부터 천지의 아름다운 풍경을 이루는 바위 등이 성채를 이룹니다.<br> 
                            최고봉인 장군봉(백두봉)과 크고 작은 19개의 봉우리들이 천지를 둘러싸고 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place02.jpg" alt="">
                          <figcaption>천지</figcaption>
                        </figure>
                        <p>백두산 분화구에 물을 담고 있는 천연호인 천지는 면적 9.17㎢, 둘레 19.7km, 최장 4.64km, 최대 수심은 384m입니다.<br>
                            천지의 물은 세 가지 샘으로부터 솟아 나오는 지하수(30%)와 우수(70%)로 되어있습니다. <br>
                            호수물은 북쪽의 유추구로 흘러나갑니다. <br>
                            그 가까이에 높이 약70m의 폭포가 있고, 병사봉 산록에는 수온 73℃의 온천(유황천)이 속고 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place03.jpg" alt="">
                          <figcaption>백두온천</figcaption>
                        </figure>
                        <p>백두온천은 병사봉으로부터 내려오는 것으로서 온천이 있는 구역은 길이 930m, 폭10~15m입니다. <br>
                            온천 온도는 최고 73℃로 매우 높습니다. <br>
                            백두온천에는 중탄산 이온이 많이 포함되어 있으며 만성위염, 요결석, 만성기관지염, 동맥경화, 대사장애, 신경질환, 피부질환 등에 효용이 있으며 효과는 매우 좋습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place04.jpg" alt="">
                          <figcaption>백두산의 폭포</figcaption>
                        </figure>
                        <p>해발 2,200m에는 우리나라에서 가장 높은 곳에 위치한 높이 20m의 백두폭포가 있습니다. 백두폭포는 언덕 사이의 개울이 절벽을 타고 떨어지는 데 그 장쾌한 모습이 비할 데가 없습니다. <br>
                            백두폭포를 지나면 세 번 꺾어져 내리는 3단 폭포가 보이는데, 이것이 사기문폭포로서 기묘한 화성암의 18m 높이의 수직벼랑에서 떨어집니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place05.jpg" alt="">
                          <figcaption>백두산 밀영</figcaption>
                        </figure>
                        <p>밀영(密營)이란 항일투쟁 때 빨치산의 아치트로서 백두산에는 백두산, 대각봉, 무두봉 등 9군데의 밀영이 있습니다.<br>
                            그중 백두산 정상부근의 정일봉 아래에 있는 백두산 밀영은 김정일위원장이 태어난 곳으로 고향집이라고도 불립니다. <br>
                            특히 이곳은 원시림으로 뒤덮힌 소백수골 안에 이르러 숲속에 들어서면 대낮에도 무서울 정도로 어둡고 앞이 보이지 않습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place06.jpg" alt="">
                          <figcaption>천군바위</figcaption>
                        </figure>
                        <p>백두산 관광도로를 따라 정상에 오르는 노정에 압록강 계곡의 수려한 경치를 감상하면서 올라가면 깎아지른 강변의 절벽으로 금강산 만물상 같은 바위들이 연이어 나타나는데 그중에서 압권인 것은 강가 벼랑옆으로 늘어선 기이한 형태의 바위군상이 바로 천군바위입니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place07.jpg" alt="">
                          <figcaption>삼지연</figcaption>
                        </figure>
                        <p>삼지연이란 약 100만년 전 화산폭발 당시 날아온 현무암과 부석들이 흐르던 강을 막아 호수로 만들어졌던 것으로 3개의 못이 나란히 있어 삼지연이라 불립니다. <br>
                            호수 주위는 4.5km, 수심은 3m이고 중간에 나무들로 뒤덮힌 작은 섬이 있습니다. 삼지연은 백두산의 만년설을 받아 주위로 펼쳐진 대수림속에 수정같은 호수입니다.<br>
                            삼지연의 큰 못 앞에는 백두산을 배경으로 1979년에 세워진 삼지연기념비가 있습니다. 이는 봉화탑의 높이만 50m, 5개의 주제와 80여 인물상의 대조각군이 장관을 이룹니다. 삼지연의 겨울은 스포츠의 천국이라 할 수 있습니다. <br>
                            호반에는 국제규모의 동계 경기를 연 적이 있고, 삼지연 남쪽 북포태산 북사면의 스키코스는 노르딕을 비롯한 어떤 스키경기라도 치를 수 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place08.jpg" alt="">
                          <figcaption>보천보</figcaption>
                        </figure>
                        <p>혜산으로부터 압록강을 따라 24km 거슬러 올라 가면 나타나는 곳입니다. 
                            이곳은 1937년 6월 김일성 주석이 보천보 항일 투쟁때 사용했다는 800여점의 유무을 전시한 보천보 혁명박물관과 김일성동상, 북한 최대의 기념탐(높이 49m, 폭 27m)인 보천보 전투 기념탑이 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place09.jpg" alt="">
                          <figcaption>리명수폭포</figcaption>
                        </figure>
                        <p>리명수 계곡에는 산수가 아름다운 명소로 알려진 곳으로 리명수 폭포가 있습니다.<br>
                            폭포의 높이는 15m, 폭 27m 이며 여러 갈래의 폭포로 되어있고 작은 바위 언덕 위 아담한 정자 아래의 현무암 바위틈에서 지하수가 솟아 흘러 내리는 특이한 형태의 폭포입니다.<br>
                            특히, 겨울철 온천지가 빙설에 덮혀도 폭포수는 얼지 않고 흘러 내려 얼음 기둥을 만들고 그 물안개는 사방으로 흩어져 주위에 서리꽃을 활짝 피게합니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/baekdu_place10.jpg" alt="">
                          <figcaption>내곡온천</figcaption>
                        </figure>
                        <p>내곡온천은 라돈천으로 수량이 풍부하고 수온이 41~46℃에 이르는데, 피부병, 관절염, 신경통, 만성위염 등에 특효가 있습니다.<br>
                            온천 주위에는 고산지대에 어울리는 현대식 시설의 욕탕과 휴양각, 문화회관, 식당 등이 있고 숙소인 온수평여관에는 21개의 객실과 문화오락시설이 갖추어져 있습니다.</p>
                      </li>
                  </ul>
                </div>
              </div>

              <!-- 갤러리 -->
              <div>
                <h4 class="hide-element">갤러리</h4>
                <div class="inner gallery tourism-gallery">
                  <div class="gallery-view">
                      <img src="/resources/images/gallery/03_01.jpg" alt="">
                      <img src="/resources/images/gallery/03_02.jpg" alt="">
                      <img src="/resources/images/gallery/03_03.jpg" alt="">
                    <div class="gallery-view__button">
                      <button type="button" class="prev-button hide-text">이전</button>
                      <button type="button" class="next-button hide-text">다음</button>
                    </div>
                    <div class="gallery-view__desc">
                      <p>백두산의 봄</p>
                      <p>백두산 천지에서 일출장면</p>
                      <p>겨울 백두산 천지</p>
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
      
      //갤러리 텍스트 추가
      $('.tab a').eq(2).on('click', function(){
        galleryTextAdd();
      });
      function galleryTextAdd(){
        var $glm_li = $('.gallery-list__mask li'),
            $desc = $('.gallery-view__desc p'),
            len = $desc.length;

          $glm_li.find('p').remove();
          for (var i = 0; i < len; i++) {
            $glm_li.eq(i).append('<p>'+ $desc.eq(i).html() +'</p>')
          }

        $(window).resize(function(){
          galleryTextAdd();
        });
      }
      

    })(FuncObj, jQuery);
    </script>
  </body>
</html>