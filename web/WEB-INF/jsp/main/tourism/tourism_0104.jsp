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
                    <a href="/tourism/tourism_0103" class="swiper-slide ">백두산</a>
                    <a href="/tourism/tourism_0104" class="swiper-slide current">평양</a>
                    <a href="/tourism/tourism_0106" class="swiper-slide">기타</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- //mobile-swiper-tab -->
            <div class="inner">
              <div class="tab col03">
                <a href="/" class="active">평양소개</a>
                <a href="/">주요관광지</a>
                <a href="/">갤러리</a>
              </div>
            </div>

            <div class="tab-content type-pyongyang">

              <!-- 평양소개 -->
              <div>
                <h4 class="hide-element">평양소개</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">대동강이 흐르는 역사와 경제의 중심 도시</strong>
                  <div class="tourism-info-dec">
                    <strong>평양이라는 지명은 ‘넓은 평원에 자리잡고 있다’는 뜻에서 유래되었으며 ‘조용한 지대’라는 의미도 있습니다.</strong>
                    <p>평양은 인구 약 200만 명, 총면적 2,630㎢이며 비교적 평탄한 지세에 대동강을 끼고 북측 수도로서 정치, 경제, 문화의 중심지입니다. 
                        원래 평양이라는 지명은 ‘넓은 평원에 자리잡고 있다’는 뜻에서 유래되었으며 ‘조용한 지대’라는 의미도 있습니다. 평양 서북쪽 일대에는 높지 않은 산들이 병풍처럼 늘어서 있고 동쪽 일대에는 낮은 언덕들이 널려있습니다.</p>
                  </div>
                </div>

                <div class="overview tourism-info-vs"></div>

                <div class="inner tourism-info-list">
                  <dl>
                    <dt><strong>평양의 <br class="pc-br">역사</strong></dt>
                    <dd>
                      <p>평양은 예부터 관서지방의 중심지였고 멀리 고조선 시대에는 왕검성이 있던 곳이다. 고려 시대에는 서경, 조선 시대에는 평양부로 불렸으며 고조선, 고구려 시대에 왕도로서 터전을 잡았으며 그 후 관서지방의 정치, 문화의 도시로 발전하였다. 6.25전후 30여 년 동안 40여 개의 현대적인 새 거리가 건설되었고 동서를 연결하는 대동강의 교량들과 전차, 버스, 지하철 등의 대중교통이 만들어져있다.</p>
                      <p>오늘날 평양은 북한 최대도시로서 행정구역이 확장되어 19개 구역을 포함한 주위 4개 군, 6개 노동자구로 구성된다. 평양은 4개 구역으로 나누어져 강북은 정치, 예술, 문화, 스포츠 중심지로 강동은 교육 중심지, 강남은 산업(제조업, 농업) 중심, 강북은 각종 스포츠 시설을 수용한 체육 단지의 특징을 띠고 있다.</p>
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
                          <img src="/resources/images/tourism/pyongyang_place01.jpg" alt="">
                          <figcaption>류경정주영체육관</figcaption>
                        </figure>
                        <p>예부터 버드나무가 많아 ‘류경’이라고도 불리던 평양에 남북교류와 협력에 커다란 자취를 남긴 故정주영 명예회장의 통일에 대한 의지를 추모하기 위해 세워진 류경정주영체육관은 현대의 기술력과 북측의 노동력이 결합된 명실상부한 남북 경협의 상징으로 체육 및 문화교류의 장으로 활용되고 있습니다.<br>
                            평양시 보통강구역 류경동에 위치한 류경정주영 체육관은 8,261평 면적에 12,309석의 인원을 수용할 수 있는 주경기장과 1,074평에 164석을 수용할 수 있는 보조경기장으로 구성되어 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place02.jpg" alt="">
                          <figcaption>만경대 옛집</figcaption>
                        </figure>
                        <p>만경대는 평양 중심에서 서남쪽으로 약 12km 떨어진 곳에 위치해 있으며 김일성 주석이 태어나서 어린시절을 보낸 곳이라고 합니다.<br>
                            만경대는 ‘일만 가지 경치를 볼 수 있다’고 하여 만경대라고 불리게 되었으며 주변에는 만경대 혁명사적관, 가족분묘 50여종의 현대적인 유희시설을 갖춘 큰 유희장이 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place03.jpg" alt="">
                          <figcaption>기념비 및 명승지</figcaption>
                        </figure>
                        <p>평양에는 여러 기념비들이 산재해 있다. 만수대 지역에는 만수대 대기념비, 천리마 동상 등이 있으며, 1972년 김일성 주석의 생일을 기념해 세운 높이 20m의 황금동상이 있습니다.<br>
                            동상의 배경인 백두산 벽화와 조각군상의 오묘한 배합과 지형 및 주위 환경에 걸맞는 기념대의 위치와 크기는 조형적 조화를 이루고 있습니다.
                            대동강변에는 170m 높이의 주체사상탑이 있습니다. 주체사상탑은 전통 석탑건축양식으로 봉화, 탑신, 3인군상, 부주제 군상, 정각, 대형분수로 구성되어 있습니다.<br>
                            고속승강기가 설치되어 있어 꼭대기 전망대에서 평양시내를 한눈에 내려다 볼 수 있습니다. 또한 보통강변에는 보통강 개수공사 기념탑이 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place04.jpg" alt="">
                          <figcaption>현대적 건물</figcaption>
                        </figure>
                        <p>만수대의사당, 인민대학습당, 인민문화궁전, 만수대예술극장, 2.8문화되관, 평양교예극장, 만경대학생소년궁전, 평양지하철도, 5.1경기장, 동평양대극장, 청년중앙회관 등이 있으며 청춘거리에는 체육관 등이 있습니다. 
                            1984년 10월 11일 완공된 만수대의사당은 연 건축 면적 4만 5천㎡입니다. <br>
                            2,000여 좌석의 대회장 외에 1층과 2층에는 소회의장과 회담실, 번역실, 조인식장 등이 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place05.jpg" alt="">
                          <figcaption>개선문</figcaption>
                        </figure>
                        <p>1982년 4월 김일성 주석의 생일을 기념하기 위해 세운 건축물로 1945년 김주석이 귀국한 수 첫 평양 연설을 했던 장소에 세워졌습니다.
                            개선문의 높이는 60m, 폭은 52.5m로 화강암 1만 5,000개로 만들어졌으며 <br>
                            &lt;김일성 장군의 노래&gt;와 70개의 진달래꽃이 새겨져 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place06.jpg" alt="">
                          <figcaption>조선예술영화촬영소</figcaption>
                        </figure>
                        <p>1947년 건립된 조선예술영화촬영소는 북측 영화예술의 메카로 부지면적 100만㎡, 건축면적 10만㎡의 대규모 야외 영화촬영소로 촬영소 내에는 조선시대부터 일제시대에 이르는 다양한 촬영세트 및 중국, 일본, 미국 등의 거리 풍경까지 갖춰놓아 볼거리가 풍부합니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place07.jpg" alt="">
                          <figcaption>인민대학습당</figcaption>
                        </figure>
                        <p>북측 최대의 도서관으로 1982년 건립되었고, 3천만권의 장서와 5,000여석의 열람석, 그리고 다양한 시청각 학습실 등을 보유하고 있으며 1일 평균 이용인원은 1만 2천명 정도입니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place08.jpg" alt="">
                          <figcaption>인민문화궁전</figcaption>
                        </figure>
                        <p>1974년에 개관된 인민문화궁전은 북측의 대표적인 공연시설로 보통 강기슭에 위치하며, 건물면적이 6만여㎡로 내부에는 500여개의 별도 공연 공간이 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place09.jpg" alt="">
                          <figcaption>만경대소년학생궁전</figcaption>
                        </figure>
                        <p>1989년 건립된 만경대 소년학생궁전은 학교 수업 후 이용할 수 있는 청소년 취미교육 시설로서 500여 개의 연구실과 100여 개의 연습실로 구성되어 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place10.jpg" alt="">
                          <figcaption>모란봉</figcaption>
                        </figure>
                        <p>평양의 중심부에 자리잡고 있는 모란봉은 그 생김새가 모란꽃처럼 기묘하고 아름답다고 하여 붙여진 이름으로 현재는 평양시민들의 주요한 휴식처로 각광받고 있습니다.<br>
                            모란봉 정상에 자리잡고 있는 을밀대는 평양팔경의 하나로 을밀대에서 서면 평양의 아름다운 경치를 한눈에 조망할 수 있습니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place11.jpg" alt="">
                          <figcaption>옥류관</figcaption>
                        </figure>
                        <p>유명한 평양냉면의 맛을 제대로 볼 수 있는 평양의 대표적인 식당으로 동시에 2,250명이 식사를 할 수 있는 대형 식당입니다. <br>
                            이곳 옥류관에서 냉면과 더불어 먹는 녹두전과 시원한 물김치의 맛은 평양냉면의 맛을 오랫동안 기억나게 하는 별미중의 별미입니다.</p>
                      </li>
                      <li>
                        <figure>
                          <img src="/resources/images/tourism/pyongyang_place12.jpg" alt="">
                          <figcaption>지하철도</figcaption>
                        </figure>
                        <p>평양의 지하철은 ‘지하철도’또는 ‘지하궁전’이라고도 하며, 현재 남북 종단선인 천리마선(부흥역~붉은별역)과 동서 횡단선인 혁신선(낙원역~광복역)등 총 2개노선에 17개역을 통해 탑승이 가능합니다.</p>
                      </li>
                  </ul>
                </div>
              </div>

              <!-- 갤러리 -->
              <div>
                <h4 class="hide-element">갤러리</h4>
                <div class="inner gallery tourism-gallery">
                  <div class="gallery-view">
                      <img src="/resources/images/gallery/04_01.jpg" alt="">
                      <img src="/resources/images/gallery/04_02.jpg" alt="">
                      <img src="/resources/images/gallery/04_03.jpg" alt="">
                      <img src="/resources/images/gallery/04_04.jpg" alt="">
                      <img src="/resources/images/gallery/04_05.jpg" alt="">
                      <img src="/resources/images/gallery/04_06.jpg" alt="">
                      <img src="/resources/images/gallery/04_07.jpg" alt="">
                    <div class="gallery-view__button">
                      <button type="button" class="prev-button hide-text">이전</button>
                      <button type="button" class="next-button hide-text">다음</button>
                    </div>
                    <div class="gallery-view__desc">
                      <p>류경체육관</p>
                      <p>만경대</p>
                      <p>기념비</p>
                      <p>개선문</p>
                      <p>조선예술영화촬영소</p>
                      <p>인민대학습당</p>
                      <p>현대적 건물</p>
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