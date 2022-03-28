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
                    <a href="/tourism/tourism_0102" class="swiper-slide current">개성</a>
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
                <a href="/" class="active">개성소개</a>
                <a href="/">주요관광지</a>
                <a href="/">갤러리</a>
              </div>
            </div>

            <div class="tab-content type-gaesung">

              <!-- 개성소개 -->
              <div>
                <h4 class="hide-element">개성소개</h4>
                <div class="inner tourism-info">
                  <strong class="tourism-info-tit">역사가 살아 숨 쉬는 古都 개성</strong>
                  <div class="tourism-info-dec">
                    <strong>개성은 경기도 북서부에 위치한 고려(918~1392)의 도읍지로 문화유적이 많은 도시입니다.</strong>
                    <p>개성은 고려 500년의 역사가 살아있는 역사문화유적의 도시로 서울에서 불과 70km 거리에 자리 잡고 있으며, 선죽교, 고려성균관, 박연폭포 등 다양한 역사유적과 명승지가 있습니다.</p>
                  </div>
                </div>

                <div class="overview tourism-info-vs"></div>

                <div class="inner tourism-info-list">
                  <dl>
                    <dt><strong>개성관광의 <br class="pc-br">의의</strong></dt>
                    <dd>
                      <p>개성관광은 육로를 통해 북측도시의 역사문화 유적지와 명승지를 관광함으로써 남북교류와 통일의 기반을 마련하고, 개성공단사업과 연계함으로써 민족화해와 협력을 활성화하는 데 그 의의가 있습니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>개성시  <br class="pc-br">개관</strong></dt>
                    <dd>
                      <p>개성은 경기도 북서부에 위치한 고려(918~1392)의 도읍지로 문화유적이 많은 도시입니다. 예로부터 부소갑이나 송악, 개주, 개경, 송도 등으로 불리기도 했죠. 휴전선을 사이에 두고 남측의 철원과 연천, 파주 등과 접하고 있으며, 한강을 사이에 두고는 김포와 강화도를 마주하고 있습니다. 판문점에서는 겨우 10km거리에 있으며 한국전쟁 때 최초의 휴전회담이 열린 곳이기도 한데, 그 회담이 열린 장소가 아직까지 잘 보존되어 있습니다. 개성의 면적은 1,200㎢로 남측의 ‘시’ 정도 규모이고, 인구는 약 40만명 정도 됩니다. 개성은 신석기 시대부터 사람들이 터를 잡기 시작했는데 기원전 1세기 삼한시대에는 대방의 옛 터였고, 고구려 때에는 부소갑으로 불리었습니다.<br>  
                        6세기 중엽에는 신라의 영토가 되면서 송악군으로 이름이 바뀌었고, 고려 태조가 935년 신라를 복속한 뒤에 국도가 되었습니다.<br> 
                        960년 광종 때에 개경으로 개칭되었다가 995년 성종 때에 개성부로 다시 고쳐졌습니다. 개성은 고려 때 국제무역항의 구실을 했던 예성강 입구의 벽란도가 가까이에 있어 일찍부터 상업도시로 발달했습니다. Korea라는 이름이‘고려’의 Corea에서 유래한 것은 다들 잘 아시리라 믿습니다. 상재에 능한 개성인들은 전국의 행상을 조직화해서 서울에 송방(松房)을 두고 전국 시장의 경제권을 장악하기도 했습니다. 게다가 개성상인들은 서양보다 2백년이나 앞서 사개치부법이라는 독특한 복식부기와 어음을 창안하여 전파시키기도 했습니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>개성 지명의 <br class="pc-br">유래</strong></dt>
                    <dd>
                      <p>개성은 한자어가 들어오기 전 고구려 때에는 동비홀이라 불리었습니다. 동비홀의 어원은 도비구루(두비구루)인데, 도비(두비)는“열다”, 구루는“성”이라는 의미를 가지고 있습니다. 즉,“열린 성”“열려진 곳에 있는 성”이라는 뜻이지요. 고구려 때에 개성은 부속갑이라고도 불렸습니다. 부소갑은 부소산, 그러니까 송악산과 관련해서 나온 이름이지요. 송악산이 백제 때에는 청목산이나 청목령으로 불렸던 것도 푸른 소나무가 많이 있었기 때문이고, 조선시대 흔히 쓰이던 송도, 송경이라는 이름들도 소나무가 많은 송악산을 끼고 있는 도읍지라는 데서 유래한 것입니다.</p>
                    </dd>
                  </dl>
                  <dl>
                    <dt><strong>개성 관광사업 <br class="pc-br">추진 경과</strong></dt>
                    <dd>
                      <ol class="list-table">
                        <li>
                          <strong>1998년  6월</strong>
                          <p>故 정주영 명예회장이 소떼 1,001마리와 함께 방북</p>
                        </li>
                        <li>
                          <strong>2000년  8월 </strong>
                          <p>故 정몽헌 회장과 김정일 국방위원장의 4차면담 후 7대 합의서 체결</p>
                        </li>
                        <li>
                          <strong>2003년  3월</strong>
                          <p>개성관광사업 협력사업자 승인</p>
                        </li>
                        <li>
                          <strong>2003년  6월</strong>
                          <p>개성공단 착공식</p>
                        </li>
                        <li>
                          <strong>2004년 12월</strong>
                          <p>개성공단 첫 제품 생산</p>
                        </li>
                        <li>
                          <strong>2005년  7월</strong>
                          <p>현정은회장, 김정일국방위원장 1차 면담</p>
                        </li>
                        <li>
                          <strong>2005년  8월</strong>
                          <p>개성시범관광 실시 (3차례)</p>
                        </li>
                        <li>
                          <strong>2007년 11월</strong>
                          <p>현정은회장, 김정일국방위원장 2차 면담 (백두산 및 개성관광 합의)</p>
                        </li>
                        <li>
                          <strong>2007년 12월</strong>
                          <p>개성관광 실시</p>
                        </li>
                      </ol>
                      
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
                        <img src="/resources/images/tourism/gaesung_place01.jpg" alt="">
                        <figcaption>개성남대문</figcaption>
                      </figure>
                      <p>개성남대문은 개성 내성의 정남문으로 고려말부터 조선초에 걸쳐 완성되었으나, 6.25때 파괴된 것을 1954년에 복원하였다. 남대문은 고려시대의 건축술을 이어받아 장식이 소박하면서도 짜임새가 있는 문루로 평가되며 남대문 안에는 연복사에서 옮겨온 무게 14톤의 거대한 연복사종이 걸려있다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place02.jpg" alt="">
                        <figcaption>선죽교</figcaption>
                      </figure>
                      <p>선죽교는 자그마한 돌다리로 고려 충신 정몽주가 이방원에 의해 피습당한 곳인데 애초에 선지교(善地橋)라 불리던 것은 정몽주가 흘린 핏자국이 없어지지 않고 참대가 자라났다고 하여 선죽교라고 고쳐 부르게 되었다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place03.jpg" alt="">
                        <figcaption>고려박물관</figcaption>
                      </figure>
                      <p>고려박물관은 고려시대 최고 교육기관인 국자감의 후신인 성균관 건물로서 고려시대 건물은 임진란때 소실대고 현재 건물은 17세기 초에 건축되었다. 고려박물관은 건물내부를 전시공간으로 활용하여 4개의 전시관으로 고려청자, 금속활자 등 약 1,000여점의 고려유물을 전시하고 있다. 야외 전시장에는 헌화사 7층탑, 흥국사 석탑 등 북측의 국보급 문화재가 전시되어있다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place04.jpg" alt="">
                        <figcaption>박연폭포</figcaption>
                      </figure>
                      <p>박연폭포는 송도삼절의 하나로 금강산 구룡폭포, 설악산 대승포고와 함께 조선3대포고로 손꼽힌다. 박연폭포는 높이 37m, 너비 1.5m로 천마산과 성거산 사이의 험준한 골짜기로 흘러 내리며, 깎아지른 듯한 벼랑과 사방으로 병풍처럼 둘러선 층암절벽에 안기어 절경을 이룬다. 폭포위쪽은 바가지 모양으로 패인 박연이라는 연못이 있고, 밑으로는 둘레 120m의 고모담이 있다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place05.jpg" alt="">
                        <figcaption>왕건왕릉</figcaption>
                      </figure>
                      <p>고려의 시조, 왕건의 무덤인 왕건왕릉은 개성남대문에서 북쪽으로 6km 떨어진 해선리에 자리잡고 있다. 1994년 개건하며 세운 ‘고려태조왕건왕릉개건비’가 능앞에 있으며 무덤안을 직접 관람할 수 있게 되어 있는 점과 공원이 조성되어 있는 점이 특징이다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place06.jpg" alt="">
                        <figcaption>공민왕릉</figcaption>
                      </figure>
                      <p>고려 31대왕인 공민왕의 무덤으로 개성 중심부에서 서쪽으로 14km 떨어져 위치해 있다. 이 무덤은 쌍분으로 왼편이 공민왕의 현릉이고 오른편은 왕비인 노국공주의 정릉으로 풍수지리상 명당에 위치한 고려시대 대표적 능묘이다.</p>
                    </li>
                    <li>
                      <figure>
                        <img src="/resources/images/tourism/gaesung_place07.jpg" alt="">
                        <figcaption>영통사</figcaption>
                      </figure>
                      <p>개성 시내에서 북쪽으로 송도저수지를 지나면 박달산 기슭 영통골에 천태종의 시조인 대각국사 의천에 의해 창건된 영통사가 위치하고 있다. 영통사는 고려시대의 대표적인 사찰로 여러 차례 전란으로 폐사되었다가 최근 남과 북이 합심하여 복원하였다. 경내에는 북측의 문화재로 진정된 대각국사비, 당간지주, 삼층석탑, 오층석탑이 자리하고 있다.</p>
                    </li>
                    
                  </ul>
                </div>
              </div>

              <!-- 갤러리 -->
              <div>
                <h4 class="hide-element">갤러리</h4>
                <div class="inner gallery tourism-gallery">
                  <div class="gallery-view">
                      <img src="/resources/images/gallery/02_01.jpg" alt="">
                      <img src="/resources/images/gallery/02_02.jpg" alt="">
                      <img src="/resources/images/gallery/02_03.jpg" alt="">
                      <img src="/resources/images/gallery/02_04.jpg" alt="">
                      <img src="/resources/images/gallery/02_05.jpg" alt="">
                      <img src="/resources/images/gallery/02_06.jpg" alt="">
                      <img src="/resources/images/gallery/02_07.jpg" alt="">
                      <img src="/resources/images/gallery/02_08.jpg" alt="">
                      <img src="/resources/images/gallery/02_09.jpg" alt="">
                      <img src="/resources/images/gallery/02_10.jpg" alt="">
                      <img src="/resources/images/gallery/02_11.jpg" alt="">
                      <img src="/resources/images/gallery/02_12.jpg" alt="">
                      <img src="/resources/images/gallery/02_13.jpg" alt="">
                      <img src="/resources/images/gallery/02_14.jpg" alt="">
                    <div class="gallery-view__button">
                      <button type="button" class="prev-button hide-text">이전</button>
                      <button type="button" class="next-button hide-text">다음</button>
                    </div>
                    <div class="gallery-view__desc">
                      <p>민속여관</p>
                      <p>민속여관 11첩 반상기</p>
                      <p>통일관 전경</p>
                      <p>통일관 냉면</p>
                      <p>선죽교</p>
                      <p>고려박물관</p>
                      <p>고려박물관 내부</p>
                      <p>관음사</p>
                      <p>박연폭포</p>
                      <p>영통사</p>
                      <p>개성관광</p>
                      <p>남대문</p>
                      <p>공민왕릉</p>
                      <p>왕건왕릉</p>
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