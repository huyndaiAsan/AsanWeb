<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="aac" uri="/WEB-INF/tld/aac.tld"%>
<c:set var="FM" value="국내외 관광" scope="request"/>
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
          <div class="contents type-inoutside">
            <div class="inner">
              <div class="heading">
                <h3>국내외 관광</h3>
                <em>The way to the hope, Hyundai Asan  현대 아산이 희망의 다리가 되어 드리겠습니다.</em>
              </div>
            </div>

            <!-- //heading -->
            <div class="link-tab">
              <div class="inner">
                <div class="display-table col03">
                  <a href="/tourism/tourism_0201" >크루즈</a>
                  <a href="/tourism/tourism_0202">일반관광</a>
                  <a href="/tourism/tourism_0203" class="current">MICE</a>
                </div>
              </div>
            </div>
            
            <div class="inner">
              <div class="gallery">
                <div class="gallery-view">
                  <img src="/resources/images/tourism/tourism_0203_gallery_01.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0203_gallery_02.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0203_gallery_03.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0203_gallery_04.jpg" alt="">
                  <img src="/resources/images/tourism/tourism_0203_gallery_05.jpg" alt="">
                  <div class="gallery-view__button">
                    <button type="button" class="prev-button hide-text">이전</button>
                    <button type="button" class="next-button hide-text">다음</button>
                  </div>
                  <div class="gallery-view__desc">
                    <p>평화&middot;통일테마 컨퍼런스</p>
                    <p>고위급 인사 초청사업</p>
                    <p>국제회의</p>
                    <p>국제기구 VIP행사</p>
                    <p>기업 인센티브 투어</p>
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
                  <strong class="only-noto-kr">Opening the way </strong>
                  <p>MICE의 새로운 길을 열어갑니다.<br>
                      현대아산 MICE(Meeting, Incentives, Convention, Exhibition) 사업은 국제기구, 정부부처 및 공공기관 발주 행사와 초청사업, 국제 학술회의, 기업행사, 해외 연수, 출장 관리 등 수행을 통해 지속적인 성장을 하고 있습니다. <br><br>
                      특히 정부는 MICE 사업을 3대 전략 관광 사업으로 지정하여 육성하고 있어, 당사는 동 사업을 지역(금강산, 개성 등) 및 테마(평화, 남북통일 등)와 연계한 기획 MICE 사업으로 발전시킬 계획입니다.
                      </p>
                  <!-- <div class="button-wrap align-left">
                    <a href="/" target="_blank" class="button01">상품 둘러보기</a>
                  </div> -->
                </div>
              </div>
            </div>
            <!-- //gallery -->

            <div class="type-mice">
              <div class="inner">
                <div class="heading">
                  <h4>MICE 관련 서비스<br><em>국제회의, 컨퍼런스, 전시, 해외인사 초청, 인센티브 투어, 해외연수 등</em></h4>
                  
                </div>
                <ul class="ico-mice">
                  <li>
                    <div>
                      <strong>행사 기획 및 예산 관리</strong>
                      <p>프로그램 기획, 연사 제안, 재원 조달 및 <br>예산 기획 및 Balance 관리</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>참가자·연사 섭외 및 관리</strong>
                      <p>초청 및 참가자 관리, 연사 섭외, 항공 발권 및 Hospitality, <br>등록·논문 프로그램 구축, 관련 기관 섭외</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>행사장 조성·회의 운영</strong>
                      <p>장소 제안, 행사장 조성, 기자재(AV, 조명, 무대, 장비, 기술) <br>지원, 회의 운영 연출, 환경 장식물 제작 및 설치</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>온·오프라인 홍보, 전시·후원 운영</strong>
                      <p>온·오프라인 홍보, 홈페이지, 어플 개발 및 운영, <br>CI 디자인 개발, 제작물 운영</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>공식행사, 이벤트, 사교행사, 식음료</strong>
                      <p>공식행사 연출, 공연 제안 및 섭외, 산업시찰, <br>문화 체험, 관광, 식음료 운영</p>
                    </div>
                  </li>
                  <li>
                    <div>
                      <strong>현장 운영·사후 관리</strong>
                      <p>전문 인력 TF 사무국 조직, 설문조사, 감사 편지 발송, <br>정산</p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <!-- //overview -->

            <div class="inner">
              <div class="heading">
                <h4>주요 진행 사업</h4>
              </div>

              <div class="tab-scroll">
                <div class="tab col06">
                  <a href="/" class="active">2013년도 이전</a>
                  <a href="/">2014년도</a>
                  <a href="/">2015년도</a>
                  <a href="/">2016년도</a>
                  <a href="/">2017년도</a>
                  <a href="/">2018년도</a>
                </div>
              </div>
  
              <div class="tab-content type-geumgang">
  
                <!-- 2013년도 이전 -->
                <div>
                    <div class="table01">
                      <table>
                        <caption class="hide-element">2013년도 이전 주요 진행 사업 연도, 추진내용 정보</caption>
                        <colgroup>
                          <col style="width: 200px;">
                          <col style="width: auto">
                        </colgroup>
                        <thead>
                          <tr>
                            <th scope="col">연도</th>
                            <th scope="col">추진내용</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">2013.11</th>
                            <td class="align-left">외교부 2013 재외명예영사 방한초청사업</td>
                          </tr>
                          <tr>
                            <th scope="row">2013.11</th>
                            <td class="align-left">아태평양 미세분석국제학술회의 (APCE)</td>
                          </tr>
                          <tr>
                            <th scope="row">2013.08</th>
                            <td class="align-left">제19차 국제공학설계학술대회 (ICED13)</td>
                          </tr>
                          <tr>
                            <th scope="row">2013.06</th>
                            <td class="align-left">통일부 한독통일 자문위원회</td>
                          </tr>
                          <tr>
                            <th scope="row">2013.04</th>
                            <td class="align-left">해외문화홍보원 해외주요인사 초청사업</td>
                          </tr>
                          <tr>
                            <th scope="row">2013.01</th>
                            <td class="align-left">IEEE 핵과학심포지움 및 의료영상컨퍼런스 (IEEE NSS-MIC-RTSD)</td>
                          </tr>
                          <tr>
                            <th scope="row">2012.07</th>
                            <td class="align-left">외교부 2012 재외명예영사 방한초청사업</td>
                          </tr>
                          <tr>
                            <th scope="row">2012.01</th>
                            <td class="align-left">해외문화홍보원 주한외국인 한국문화나들이</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>

                </div>

                <!-- 2014년도 -->

                <div>
                  <div class="table01">
                    <table>
                      <caption class="hide-element">2014년도 주요 진행 사업 연도, 추진내용 정보</caption>
                      <colgroup>
                        <col style="width: 200px;">
                        <col style="width: auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th scope="col">연도</th>
                          <th scope="col">추진내용</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">2014.11</th>
                          <td class="align-left">외교부 제2차 한-태평양도서국 외교장관회의</td>
                        </tr>
                        <tr>
                          <th scope="row">2014.09</th>
                          <td class="align-left">국토교통부/해외건설협회 GICC 2014</td>
                        </tr>
                        <tr>
                          <th scope="row">2014.09</th>
                          <td class="align-left">세계분자영상학술대회 (WMIC 2014)</td>
                        </tr>
                        <tr>
                          <th scope="row">2014.08</th>
                          <td class="align-left">한국상담학회 연차대회</td>
                        </tr>
                        <tr>
                          <th scope="row">2014.06</th>
                          <td class="align-left">한국섬유산업연합회 CEO 포럼</td>
                        </tr>
                        <tr>
                          <th scope="row">2014.04</th>
                          <td class="align-left">해외문화홍보원 해외주요인사 초청사업</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- 2015년도 -->
                <div>
                  <div class="table01">
                    <table>
                      <caption class="hide-element">2015년도 주요 진행 사업 연도, 추진내용 정보</caption>
                      <colgroup>
                        <col style="width: 200px;">
                        <col style="width: auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th scope="col">연도</th>
                          <th scope="col">추진내용</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">2015.11</th>
                          <td class="align-left">국토교통부/해외건설협회 GICC 2015</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.10</th>
                          <td class="align-left">외교부 제3차 한-태평양도서국 고위관리회의</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.10</th>
                          <td class="align-left">MicroTAS 2015 (경주화백컨벤션센터)</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.10</th>
                          <td class="align-left">세종학당재단 한국어우수학습자초청연수</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.09</th>
                          <td class="align-left">국제PEN 본부 세계 한글작가대회 (경주화백컨벤션센터)</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.09</th>
                          <td class="align-left">국제핵융합기술 심포지움 (제주 국제컨벤션센터)</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.08</th>
                          <td class="align-left">세종학당재단 세계한국어교육자대회</td>
                        </tr>
                        <tr>
                          <th scope="row">2015.05</th>
                          <td class="align-left">UNGC UN 글로벌 컴팩트 (반기문 UN 사무총장 참석)</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- 2016년도 -->
                <div>
                  <div class="table01">
                    <table>
                      <caption class="hide-element">2016년도 주요 진행 사업 연도, 추진내용 정보</caption>
                      <colgroup>
                        <col style="width: 200px;">
                        <col style="width: auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th scope="col">연도</th>
                          <th scope="col">추진내용</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">2016.10</th>
                          <td class="align-left">외교부 2016 재외명예영사 초청사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2016.10</th>
                          <td class="align-left">Micro-Technology 국제학술회의</td>
                        </tr>
                        <tr>
                          <th scope="row">2016.09</th>
                          <td class="align-left">문화체육관광부 세계한글작가대회</td>
                        </tr>
                        <tr>
                          <th scope="row">2016.07</th>
                          <td class="align-left">한국언론진흥재단 해외언론인 초청사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2016.06</th>
                          <td class="align-left">통일부 한반도국제포럼</td>
                        </tr>
                        <tr>
                          <th scope="row">2016.04</th>
                          <td class="align-left">현대중공업 해외 VIP투어 연간 통합 대행</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- 2017년도 -->
                <div>
                  <div class="table01">
                    <table>
                      <caption class="hide-element">2017년도 주요 진행 사업 연도, 추진내용 정보</caption>
                      <colgroup>
                        <col style="width: 200px;">
                        <col style="width: auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th scope="col">연도</th>
                          <th scope="col">추진내용</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">2017.12</th>
                          <td class="align-left">외교부 제3차 한-태평양도서국 외교장관회의</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.11</th>
                          <td class="align-left">세계화학분석기술학회 (HPLC)</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.10</th>
                          <td class="align-left">현대자동차 사우디아라비아 VIP 컨퍼런스</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.10</th>
                          <td class="align-left">문화체육관광부 세계한글작가대회</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.10</th>
                          <td class="align-left">국제전기전자학회 (IEEE)</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.10</th>
                          <td class="align-left">세계색채학회</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.04</th>
                          <td class="align-left">외교부 2017 재외명예영사 초청사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.03</th>
                          <td class="align-left">현대중공업 해외 VIP 투어 연간 통합 대행</td>
                        </tr>
                        <tr>
                          <th scope="row">2017.02</th>
                          <td class="align-left">LG전자 해외 VIP 딜러 초청 연간 대행</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- 2018년도 -->
                <div>
                  <div class="table01">
                    <table>
                      <caption class="hide-element">2018년도 주요 진행 사업 연도, 추진내용 정보</caption>
                      <colgroup>
                        <col style="width: 200px;">
                        <col style="width: auto">
                      </colgroup>
                      <thead>
                        <tr>
                          <th scope="col">연도</th>
                          <th scope="col">추진내용</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">2018.12</th>
                          <td class="align-left">외교부 북극써클포럼</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.11</th>
                          <td class="align-left">문화체육관광부 세계한글작가대회</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.10</th>
                          <td class="align-left">외교부 한-태평양도서국 고위관리회의</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.09</th>
                          <td class="align-left">LH 한반도 신경제구상 세미나</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.06</th>
                          <td class="align-left">한국국제교류재단 해외다큐멘터리 감독 초청행사 및 공공역량 강화 사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.06</th>
                          <td class="align-left">통일부 한반도 글로벌 포럼 2018 </td>
                        </tr>
                        <tr>
                          <th scope="row">2018.04</th>
                          <td class="align-left">해외문화홍보원 해외 언론인 초청사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.04</th>
                          <td class="align-left">한국교육개발원 대학기본역량진단 사업</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.03</th>
                          <td class="align-left">LG전자 해외 VIP 딜러 초청 연간 대행</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.02</th>
                          <td class="align-left">현대자동차 상용차 VIP 평창 올림픽 인센티브 투어</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.02</th>
                          <td class="align-left">LG전자 해외 VIP 평창 올림픽 인센티브 투어</td>
                        </tr>
                        <tr>
                          <th scope="row">2018.01</th>
                          <td class="align-left">문화체육관광부 국제인문포럼</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
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
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<script>
    ;(function(FuncObj, $){
      
      FuncObj.bgScrollMove();
      
    })(FuncObj, jQuery);
    </script>
  </body>
</html>