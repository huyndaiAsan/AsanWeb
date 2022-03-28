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
                    <a href="/tourism/tourism_0101" class="swiper-slide current">금강산</a>
                    <a href="/tourism/tourism_0102" class="swiper-slide">개성</a>
                    <a href="/tourism/tourism_0103" class="swiper-slide">백두산</a>
                    <a href="/tourism/tourism_0104" class="swiper-slide">평양</a>
                    <a href="/tourism/tourism_0106" class="swiper-slide">기타</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper-tab -->
            <div class="inner">
              <div class="tab col03">
                <a href="/" class="active">금강산소개</a>
                <a href="/">주요관광지</a>
                <a href="/">갤러리</a>
              </div>
            </div>

            <div class="tab-content type-geumgang">

              <!-- 금강산소개 -->
              <div>
                <h4 class="hide-element">금강산소개</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">천하제일 명산! 금강산</strong>
                  <div class="tourism-info-dec">
                    <strong>금강산은 계절의 변화에 따라 다양한 모습을 보여주기 때문에 금강, 봉래, 풍악, 개골산이라는 여러 가지 이름으로 불립니다.</strong>
                    <p>금강산은 최고봉인 비로봉(1,638m)을 비롯한 수많은 봉우리와 기묘한 바위로 어우러진 산입니다. 크고 작은 봉우리들을 합치면 그 수를 셀 수가 없어 ‘1만 2천봉’ 이라 부르고 있는데 봉우리 뿐 아니라 바위들도 하나같이 그 모양을 달리해 하늘 아래 모든 모양새를 담고 있다 해도 과언이 아닙니다.<br>
                        금강산은 크게 산세가 험하고 웅장하며 폭포가 발달한 외금강과 산세가 온유하고 유수하며 담과 소가 많은 내금강, 바다와 인접해 기암 절벽을 가진 해금강의 3개 구역으로 나누어집니다. 또한 철마다 그 색을 달리하는 금강산은 금강, 봉래, 풍악, 개골이라는 4개의 이름을 가질 정도로 계절 각각의 모습이 특색있고 아름답습니다. 사계절 울창하고 푸르른 소나무와, 티없이 깨끗하고 맑은 호수와 폭포들, 깍아지른 절벽에 수많은 이야기를 담고 있는 금강산의 절경이 당신을 기다리고 있습니다.
                        </p>
                  </div>
                </div>

                <div class="overview tourism-info-vs"></div>

                <div class="inner tourism-info-list">
                  <dl>
                    <dt><strong>미리 체험하는 <br class="pc-br">통일마을</strong></dt>
                    <dd>
                      <p>남측사람과 북측사람이 함께 웃으며 일하고 살아나가는 금강산 관광특구는 미래의 통일된 한반도를 경험할 수 있는 살아있는 통일 교육의 장입니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>살아있는 <br class="pc-br">남북교류 대화의 장</strong></dt>
                    <dd>
                      <p>남북 장관급 회담, 이산가족 상봉 등 남북 화합과 협력의 장으로 크게 활용되고 있는 금강산은 남북상시 대화 채널의 역할을 하고 있으며, 남북교류와 대화에 내가 직접 참여하고 주체가 된다는 긍지와 자부심을 느낄 수 있을 것입니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>민족의 얼이 담겨있는 <br class="pc-br">천혜의 보고</strong></dt>
                    <dd>
                      <p>‘자연이 한반도에 내려준 최고의 선물’ 이라는 찬사를 받고 있는 금강산은 일찍이 수많은 시인묵객들로부터 사랑을 받아왔고 우리 민족의 혼과 얼이 서려있는 곳으로 추앙받아 왔습니다.</p>
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
                        <img src="/resources/images/tourism/geumgang_place01.jpg" alt="">
                        <figcaption>신계사</figcaption>
                      </figure>
                      <p>장안사, 유점사, 표훈사와 함께 금강산 4대 사찰의 하나로 6.25때 모든 전각이 소실 되었으나, 남북 불교계가 힘을 합하여 복원사업을 추진해오고 있으며 현재 대웅보전이 복원되어 새로운 관광명소로 각광받고 있습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place02.jpg" alt="">
                        <figcaption>구룡폭포</figcaption>
                      </figure>
                      <p>조선의 3대 폭포인 구룡폭포는 150m의 깎아지는 절벽에서 흘러내리는, 동방에서 손꼽히는 아름다운 폭포입니다. 폭포가 떨어지는 아래 있는 못은 옛날 금강산을 지키는 아홉마리의 용이 살았다는 전설이 전해지는 구룡연이며 물깊이는 13m입니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place03.jpg" alt="">
                        <figcaption>상팔담</figcaption>
                      </figure>
                      <p>구룡폭포 위 담소 8개가 이어져 있어 상팔담이라 부르는데 위에서 보면 마치 크고 작은 그릇에 담아놓은 것 같이 보입니다. ‘선녀와 나무꾼’의 전설이 내려오는 곳으로 상팔담을 보기 위해서는 구룡대라 하는 전망대까지 올라야 합니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place04.jpg" alt="">
                        <figcaption>삼선암</figcaption>
                      </figure>
                      <p>약 30m 높이의 봉우리 세 개로 이루어진 삼선암은 신선 세 명이 돌로 굳어졌다하여 이름 붙여진 바위입니다. 상선, 중선, 하선 중 저만치 떨어져 독선암이 되어 있는 하선의 모습이 이채롭게 펼쳐집니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place05.jpg" alt="">
                        <figcaption>망양대</figcaption>
                      </figure>
                      <p>세지봉 끝에 위치한 망양대에서는 세지봉 줄기에 있는 온갖 형태의 기암괴석들과 서쪽 오봉산을 다른 각도에서 바라보기 좋은 곳입니다. 동해와 해금강 일대의 섬들은 물론 남측의 산들과도 조망할 수 있는 곳입니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place06.jpg" alt="">
                        <figcaption>봉래대</figcaption>
                      </figure>
                      <p>바위산인 봉래대는 삼일포 호수를 한눈에 볼 수 있는 최고의 전망대입니다. 16세기의 시인이며 서예가인 양사언 선생이 이곳에 와서 공부 했다고 하여 그의 호를 따 봉래대라 하였습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place07.jpg" alt="">
                        <figcaption>연화대</figcaption>
                      </figure>
                      <p>삼일포에서 보면 5개의 바위들이 마치 연꽃모양을 하고 있다 하여 연화대라 합니다. 이곳에 오르면 금강산 최고봉인 비로봉을 볼 수 있습니다. 연화대 바위 위에 세워진 연화각이 운치를 더해주는 곳입니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place08.jpg" alt="">
                        <figcaption>와우도</figcaption>
                      </figure>
                      <p>하늘에서 내려다보면 소가 누워 있는 형상을 하고 있다하여 와우도라 하는데 소나무가 많아 송도나 솔섬이라고도 합니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place09.jpg" alt="">
                        <figcaption>해금강</figcaption>
                      </figure>
                      <p>동해안의 금강산이라 불리는 해금강은 해안가의 기묘한 절벽들과 소나무가 우거진 많은 바위섬 등이 절묘하게 어우러져 하늘이 만들어낸 최고의 작품이라 할 수 있습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place10.jpg" alt="">
                        <figcaption>집선봉</figcaption>
                      </figure>
                      <p>동석동을 거쳐 산행을 하다보면 집선연봉을 볼 수 있는데 병풍같이 반듯하고, 날카로운 바위들이 장관을 이룹니다. 신선들이 내려와 놀았다는 영선대, 강선대, 승선대가 있습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place11.jpg" alt="">
                        <figcaption>세존봉 전망대</figcaption>
                      </figure>
                      <p>험한 세존봉 코스의 정상에 위치한 전망대 입니다. 관광하면서 들렀던 온정리, 고성항은 물론 삼일포, 해금강, 남측의 동해까지 볼 수 있는 곳입니다.
                        
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place12.jpg" alt="">
                        <figcaption>비둘기바위</figcaption>
                      </figure>
                      <p>날개를 쫙 펼친 모양의 ‘비둘기바위’는 금방이라도 ‘푸드덕’ 날아 갈 것처럼 보입니다. 보는 각도에 따라 큰비둘기 곁에 작은 새끼 비둘기의 모습도 보여 이채로운 광경을 연출합니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place13.jpg" alt="">
                        <figcaption>수정문</figcaption>
                      </figure>
                      <p>금강산에서 가장 큰 자연 돌문으로 그 생김새가 마치 사람이 일부러 세운 것처럼 웅장하게 펼쳐집니다. 수정문을 통과해야 비로소 수정봉 전망대에 이를 수 있습니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place14.jpg" alt="">
                        <figcaption>수정봉 전망대</figcaption>
                      </figure>
                      <p>병풍처럼 펼쳐진 집선봉, 채하봉 등 외금강의 산세와 장전항의 푸른바다를 한 눈에 감상할 수 있는 금강산 최고의 전망대입니다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place15.jpg" alt="">
                        <figcaption>표훈사</figcaption>
                      </figure>
                      <p>신라 문무왕 10년, 서기 670년에 창건된 표훈사는 금강산의 4대 사찰중 유일하게 현존하는 사찰로 역사적인 사료 가치가 높은 유적이다. 현재 반야보전 등 7개의 건축물이 남아 있어 삼국시대 건축 양식의 전형을 보여주고 있다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place16.jpg" alt="">
                        <figcaption>보덕암</figcaption>
                      </figure>
                      <p>최초 건물은 고구려 시대(서기 627년)에 세워졌고, 소실 후 17세기에 재건되었다. 20M가 넘는 절벽에 7.3M의 구리기둥 하나로 받쳐 짓고, 쇠줄로 바위를 고정해 지어놓은 보덕암은 구리기둥 하나에 의지하여 심한 바람이 불거나 4~5명이 마룻바닥을 걸으면 움직임이 심하나 300년이 지난 오늘날까지 조금도 기울어지지 않았다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place17.jpg" alt="">
                        <figcaption>묘길상</figcaption>
                      </figure>
                      <p>언덕 위 대패로 민듯한 암벽에 높이 18.2m, 귀의 길이 1.5m, 손의 길이 3m, 발의 길이 3m의 거대한 마애불이다. 이마에는 백호가 있고, 소박하면서 입체감도 있으며, 특히 웃음을 머금은 입술이 미묘하고 밝은 햇빛을 이용하여 얼굴 부분 두드러지게 새긴 기법이 주목할 만하다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place18.jpg" alt="">
                        <figcaption>만폭팔담(진주담)</figcaption>
                      </figure>
                      <p>외금강의 상팔담과 어깨를 나란히 하는 금강산의 명물로 내팔담이라고 부르기도 한다. 특히 그중에서도 5번째 담인 진주담은 장쾌한 남성미의 못으로 예로부터 수많은 시인 묵객들의 시선을 잡으며 주변 바위에 한시 등의 흔적을 남겨 놓은 것으로 유명하다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place19.jpg" alt="">
                        <figcaption>삼불암</figcaption>
                      </figure>
                      <p>나옹화상의 원불로 조각된 삼불암은(높이 8m, 너비 9m) 오른쪽이 미륵불, 가운데가 석가불, 왼쪽이 아미타불인데 손 모양이 조금씩 다르다. 장안사터에 멀지 않은 곳에 있고, 꾀꼬리의 서식지로도 유명하다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/geumgang_place20.jpg" alt="">
                        <figcaption>장안사터</figcaption>
                      </figure>
                      <p>신라 23대 법흥왕의 발원으로 진표율사가 서기 551년에 창건하였다. 유점사와 더불어 금강산 2대 사찰로 꼽혔으나, 현재는 폐허가 되어 '장안사터'라는 푯말만 있다.</p>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- 갤러리 -->
              <div>
                <div class="inner gallery tourism-gallery">
                  <div class="gallery-view">
                    <!-- <img src="/resources/images/gallery/01_01.jpg" alt=""> -->
                    <img src="/resources/images/gallery/01_02.jpg" alt="">
                    <img src="/resources/images/gallery/01_03.jpg" alt="">
                    <img src="/resources/images/gallery/01_04.jpg" alt="">
                    <img src="/resources/images/gallery/01_05.jpg" alt="">
                    <img src="/resources/images/gallery/01_06.jpg" alt="">
                    <img src="/resources/images/gallery/01_07.jpg" alt="">
                    <img src="/resources/images/gallery/01_08.jpg" alt="">
                    <img src="/resources/images/gallery/01_09.jpg" alt="">
                    <img src="/resources/images/gallery/01_10.jpg" alt="">
                    <img src="/resources/images/gallery/01_11.jpg" alt="">
                    <img src="/resources/images/gallery/01_12.jpg" alt="">
                    <img src="/resources/images/gallery/01_13.jpg" alt="">
                    <img src="/resources/images/gallery/01_14.jpg" alt="">
                    <img src="/resources/images/gallery/01_15.jpg" alt="">
                    <img src="/resources/images/gallery/01_16.jpg" alt="">
                    <img src="/resources/images/gallery/01_17.jpg" alt="">
                    <img src="/resources/images/gallery/01_18.jpg" alt="">
                    <img src="/resources/images/gallery/01_19.jpg" alt="">
                    <img src="/resources/images/gallery/01_20.jpg" alt="">
                    <div class="gallery-view__button">
                      <button type="button" class="prev-button hide-text">이전</button>
                      <button type="button" class="next-button hide-text">다음</button>
                    </div>
                    <div class="gallery-view__desc">
                      <!-- <p>개성관광 10만명 돌파 (2008년 10월)</p> -->
                      <p>비로봉</p>
                      <p>비로봉</p>
                      <p>봉래대</p>
                      <p>삼선암</p>
                      <p>구룡폭포</p>
                      <p>내금강 묘길상</p>
                      <p>내금강 보덕암</p>
                      <p>내금강 삼불암</p>
                      <p>내금강 표훈사</p>
                      <p>동석동</p>
                      <p>만물상</p>
                      <p>비봉폭포</p>
                      <p>삼일포</p>
                      <p>수정봉</p>
                      <p>신계천</p>
                      <p>집선연봉</p>
                      <p>해금강 일출</p>
                      <p>금강산 벚꽃</p>
                      <p>금강산호텔 앞 벚꽃</p>
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