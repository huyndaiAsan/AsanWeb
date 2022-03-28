<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="/resources/js/jquery.anythingslider.js"></script>
  <link rel="stylesheet" href="/resources/css/slider.css">
<style type="text/css">
  /*#slider { width: 1002px; height: 282px; }*/
</style>
<script type="text/javascript">
/*  $(function() {
    $('#slider').anythingSlider();
  });*/
</script>
</head>
<body>
<div class="contents">

  <!-- index event -->
  <div id="indexEvent">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active"><a href="#"><img src="/resources/images/main/rolling/rolling-01.jpg" alt="롤링이미지1"></a></div>
        <div class="item"><a href="#"><img src="/resources/images/main/rolling/rolling-02.jpg" alt="롤링이미지2"></a></div>
        <div class="item"><a href="#"><img src="/resources/images/main/rolling/rolling-03.jpg" alt="롤링이미지3"></a></div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="rolling-control icon-prev" aria-hidden="true"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="rolling-control icon-next" aria-hidden="true"></span>
      </a>
    </div>
  </div>

  <!-- request-exam-analysis -->
  <div class="request-exam-analysis">
    <h2 class="hide">시험분석의뢰</h2>
    <!--div class="inner">
        <a href="#"><img src="resources/images/main/request-exam-analysis-01.gif" alt="시험분석의뢰" /></a><a href="#"><img src="resources/images/main/request-exam-analysis-02.gif" alt="수수료 보기" /></a><a href="#"><img src="resources/images/main/request-exam-analysis-03.gif" alt="택배(시료) 접수" /></a><a href="#"><img src="resources/images/main/request-exam-analysis-04.gif" alt="분석진행상황" /></a><a href="#"><img src="resources/images/main/request-exam-analysis-05.gif" alt="결재/성적서 조회" /></a><a href="#"><img src="resources/images/main/request-exam-analysis-06.gif" alt="오시는 길" /></a>
    </div-->
    <div class="inner">
      <ul>
        <li class="btn-request-exam-analysis-01"><a href="#">시험분석의뢰</a></li>
        <li class="btn-request-exam-analysis-02"><a href="#">수수료 보기</a></li>
        <li class="btn-request-exam-analysis-03"><a href="#">택배(시료)접수</a></li>
        <li class="btn-request-exam-analysis-04"><a href="#">분석진행상황</a></li>
        <li class="btn-request-exam-analysis-05"><a href="#">결재/성적서 조회</a></li>
        <li class="btn-request-exam-analysis-06"><a href="#">오시는 길</a></li>
      </ul>
    </div>
  </div>

  <!-- section-team -->
  <div class="section-group">
    <div class="section-team">
      <h2 class="hide">팀별 홈페이지</h2>
      <ul>
        <li class="btn-team-01"><a href="#">가속기팀</a></li>
        <li class="btn-team-02"><a href="#">NMR팀</a></li>
        <li class="btn-team-03"><a href="#">표면분석팀</a></li>
        <li class="btn-team-04"><a href="#">전자현미경팀</a></li>
      </ul>
    </div>
    <div class="section-board">
      <div class="section-notice">
        <div class="section-title"><h2>공지사항</h2><a href="#">more</a></div>
        <ul>
          <li><a href="#">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</a></li>
          <li><a href="#">공지사항2</a></li>
          <li><a href="#">공지사항3</a></li>
          <li><a href="#">공지사항4</a></li>
          <li><a href="#">공지사항5</a></li>
        </ul>
      </div>
      <ul class="section-researchresult">
        <div class="section-title"><h2>연구성과</h2><a href="#">more</a></div>
        <ul>
          <li><a href="#">연구성과1</a></li>
          <li><a href="#">연구성과2</a></li>
          <li><a href="#">연구성과3</a></li>
          <li><a href="#">연구성과4</a></li>
          <li><a href="#">연구성과5</a></li>
        </ul>
      </ul>
    </div>
    <div class="section-promotenews">
      <div class="section-title"><h2>홍보뉴스</h2><a href="#">more</a></div>
      <ul>
        <li><a href="#"><img src="" alt="홍보뉴스1" /><span>사진제목 여기에 나옴<span></a></li>
        <li><a href="#"><img src="" alt="홍보뉴스2" /><span>사진제목 여기에 나옴<span></a></li>
      </ul>
    </div>
    <div class="section-link">
      <h2 class="hide">연결</h2>
      <ul>
        <li class="btn-link-01"><a href="#">뉴스레터</a></li>
        <li class="btn-link-02"><a href="#">장비브로셔</a></li>
        <li class="btn-link-03"><a href="#">SEM LAB</a></li>
        <li class="btn-link-04"><a href="#">X-ray LAB</a></li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>