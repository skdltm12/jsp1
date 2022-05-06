<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./web1/img/icon.jpg">
    <link rel="apple-touch-icon" href="./web1/img/icon.jpg">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="http://hdke.co.kr/main/main.php">
    <meta name="title" content="현대기업">
    <meta name="description" content="현대기업의 기업정보,제품정보,미디어 등">
    <meta name="keywords" content="현대기업,엘리베이터">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="http://hdke.co.kr/main/main.php">
    <meta property="og:title" content="현대기업">
    <meta property="og:description" content="현대기업의 기업정보,제품정보,미디어 등">
    <meta property="og:image" content="./img/web1/logo.jpg">
    <title>현대 기업</title>
    <!-- 기본 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트 모듈 연결 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@100&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans:wght@100&family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <!--스타일 초기화 모듈 연결 -->
       <!-- <link rel="stylesheet" href="./css/reset.css"> -->
       <link rel="stylesheet" href="./css/normalize.css">
       <link rel="stylesheet" href="common.css">
       <link rel="stylesheet" href="sub_common.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    
    </style>

</head>
<body>
    <div class="wrap">
        <header id="hd">
            <div class = "hd_wrap">
                <a href="index.jsp" class="logo"><img src="./web1/img/logo.jpg" alt="로고"></a>
				<%@ include file="nav.jsp" %>
            </div>            
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top.jpg" alt="인사말">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">회사소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1" selected>인사말</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3">보유인증</option>
                                        <option value="company.jsp#page4">오시는 길</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./company.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="인사말1">
                                <a href="./company.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>인사말</h2>
                                <p>HOME>회사소개>인사말</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot1">
                                <img src="./web1/img/greeting.jpg" alt="인사말2">
                                <br><br><br><br>
                                <h3>21세기 새로운 건축의장 문화를 이끌어갈 <br>
                                    (주)현대기업에 오신것을 환영합니다.</h3>
                                <br><br>
                                <img src="./web1/img/line.jpg" alt="줄">
                                <p><br>
                                    21세기 새로운 건축의장문화를 이끌어 갈 당사는 1979년에 창업하여 1987년 법인 설립 후 다양한 ITEM을 개발하여 왔으며,<br>
                                    앞으로도 꾸준한 개발을 통해 최고의 제품으로 여러분께 다가갈 것 입니다.<br><br><br>
                                    
                                    또한, 정보화 시대에 접어들면서 초고속으로 변해가는 경영환경에 대응하고,<br>
                                    다양해진 고객의 욕구에 충족시키기 위해 핵심 인재 양성에 최선을 다하고 있으며,<br>
                                    당사만의 핵심역량으로 경쟁우위를 확보하고 이를 통한 가치경영으로 세계제일의 건축의장 문화를 만들어가고자 합니다.<br>
                                    <br><br>
                                    당사의 전 임직원은 여러분을 위한 파트너가 될 것이며,<br>
                                    건축의장에 관한 여러분의 고민을 함께 해결해 나갈 전문가들은 항상 당신을 위한 제품을 준비하고 있습니다.<br>
                                    (주)현대기업은 언제나 당신곁에 있습니다.<br><br><br>
                                    
                                    감사합니다.<br><br><br>
                                    <img src="./web1/img/logo.jpg" alt="인사말 로고"> 
                                    <a>대표이사 이호철</a>
                                </p>                                
  
                            </div>
                            <div class="tab1">
                                <img src="./web1/img/h4_bg.png" alt="">
                                <h3>회사개요</h3>
                                <table class="ptable1">
                                    <tr>
                                       <td>회사명</td> 
                                       <td>(주)현대기업</td> 
                                       <td>대표자</td> 
                                       <td>이호철</td> 
                                    </tr>
                                    <tr>
                                       <td>소재지</td> 
                                       <td>경남 함안군 칠서면 공단동4길 94</td> 
                                       <td>설립일</td> 
                                       <td>1979년9월</td> 
                                    </tr>
                                    <tr>        
                                       <td>TEL</td> 
                                       <td>055-297-5701</td> 
                                       <td>주 거래처 은행</td> 
                                       <td>IBK 기업은행</td> 
                                    </tr>
                                    <tr>
             
                                       <td>주 생산품</td> 
                                       <td>Car Wall, Door Panel, Ceiling</td> 
                                       <td>주 거래처</td> 
                                       <td>OTIS 엘리베이터(유)</td> 
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top.jpg" alt="연혁">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">회사소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1">인사말</option>
                                        <option value="company.jsp#page2" selected>연혁</option>
                                        <option value="company.jsp#page3">보유인증</option>
                                        <option value="company.jsp#page4">오시는 길</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">
                                <a href="./company.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="인사말1">
                                <a href="./company.jsp#page3" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>연혁</h2>                             
                                <p>HOME>회사소개>연혁</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot2">
                                <h2>SINCE<a> 1979</a></h2>
                                <p>고객과 함께 성장해 온 (주)현대기업의 발자취입니다.</p>
                                <br><br>
                            </div>
                            <div class="ul1">
                                <ul class="year_lst">
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1979 <strong>09</strong></p> 
                                            <p class="lst_month_com">현대기업 설립(마산 석전동)</p>
                                        </div>  
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1987 <strong>11</strong></p>
                                            <p class="lst_month_com">주)현대기업으로 법인전환 및 본사이전 (창원시 팔용동)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1989 <strong>06</strong></p>
                                            <p class="lst_month_com">LG산전 협력업체(현 OTIS) 등록</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1993 <strong>01</strong></p>
                                            <p class="lst_month_com">LG산전(주) 92년도 우수협력회사상 수상</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1996 <strong>12</strong></p>
                                            <p class="lst_month_com">ISO9002 품질시스템 인증</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">1997 <strong>07</strong></p>
                                            <p class="lst_month_com">IQNET 등록(No.KR-00433)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2001 <strong>10</strong></p>
                                            <p class="lst_month_com">경남은행 유망중소기업 선정</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2002 <strong>01</strong></p>
                                            <p class="lst_month_com">LG-OTIS 최우수 협력업체상 수상</p>
                                            <p class="lst_month">2002 <strong>05</strong></p>
                                            <p class="lst_month_com">Q-PLUS LEVEL3 인증 (OTIS)</p>
                                            <p class="lst_month">2002 <strong>08</strong></p>
                                            <p class="lst_month_com">중국현지법인설립<br>
                                                (대련현대강판유한공사 – 요녕성 대련시 경제기술개발구내)
                                                </p>   
                                            <img src="./web1/img/history2002.jpg" alt="">                                     
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2004 <strong>06</strong></p>
                                            <p class="lst_month_com">중국현지법인설립<br>
                                                (유방신현대강판유한공사 – 산동성 안구시 경제기술개발구내)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2006 <strong>02</strong></p>
                                            <p class="lst_month_com">부설연구소 설립 (2012.7월 재등록)</p>
                                            <p class="lst_month">2006 <strong>11</strong></p>
                                            <p class="lst_month_com">경영 혁신형 중소기업 인증 (경남지방 중소기업청)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2008 <strong>11</strong></p>
                                            <p class="lst_month_com">벤처기업 인증 (기술신용보증기금)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2009 <strong>10</strong></p>
                                            <p class="lst_month_com">OTIS Major Subsystems Supplier 선정</p>
                                            <img src="./web1/img/history2009.jpg" alt="">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2011 <strong>08</strong></p>
                                            <p class="lst_month_com">IBK기업은행 유망중소기업 선정
                                                승강기 방화도어 KS 인증 취득<br> (규격 KS F 2268-1)(수탁 제2011-0578)</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2012 <strong>03</strong></p>
                                            <p class="lst_month_com">러시아 승강기 방화도어 인증</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2013 <strong>07</strong></p>
                                            <p class="lst_month_com">칠서1공장 준공 (함안군 칠서면 칠서산업단지내, 공단동4길)</p>
                                            <img src="./web1/img/history2013.jpg" alt="">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2016 <strong>04</strong></p>
                                            <p class="lst_month_com">ISO14001 환경경영시스템 인증</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst_box">
                                            <p class="lst_month">2018 <strong>07</strong></p>
                                            <p class="lst_month_com">칠서2공장 준공(함안군 칠서면 칠서산업단지내, 공단서1길)</p>
                                            <p class="lst_month">2018 <strong>08</strong></p>
                                            <p class="lst_month_com">본사이전 (칠서산업단지내, 공단동4길)</p>
                                            <img src="./web1/img/history2018.jpg" alt="" class="h_lastimg">
                                            <br><br>
                                        </div>
                                    </li>   
                                    <li>                                        
                                          <br> <br><br><br><br><br><br>                                       
                                    </li>                                  
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top.jpg" alt="보유인증1">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">회사소개</p>
                        </div>                        
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1">인사말</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3" selected>보유인증</option>
                                        <option value="company.jsp#page4">오시는 길</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">
                                <a href="./company.jsp#page2" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="인사말1">
                                <a href="./company.jsp#page4" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>보유인증</h2>
                                <p>HOME>회사소개>보유인증</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot3">
                                <h2>최고의 서비스 품질을 위한 (주)현대기업의 노력은 멈추지 않습니다.</h2>
                                <img src="./web1/img/h4_bg.png" alt="">
                                <p>특허보유현황</p>
                                <div class="tab2">
                                <table class="ptable2">
                                    <tr>
                                        <td>발명의 명칭</td>
                                        <td>등록번호</td>
                                    </tr>
                                    <tr>
                                        <td>수직 진동 스크래칭 장치</td>
                                        <td>10-08377318</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 도어의 회전형 손끼임 방지구</td>
                                        <td>20-0485400</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 도어의 손끼임 방지구</td>
                                        <td>30-0948106</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 도어의 손끼임 방지구</td>
                                        <td>30-0949102</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 도어</td>
                                        <td>20-0489300</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 도어 구조</td>
                                        <td>20-0489301</td>
                                    </tr>
                                    <tr>
                                        <td>엘리베이터 캐빈</td>
                                        <td>10-2060193</td>
                                    </tr>
                                </table>
                                </div>
                                <div class="license">
                                    <img src="./web1/img/h4_bg.png" alt="인증">
                                    <p>인증보유현황</p>
                                    <license1 class="lic1">
                                        <img src="./web1/img/cer01.jpg" alt="" class="licimg1">
                                        <h3>KSA ISO 9001:2015</h3>
                                        <p>Production and sales of Entrance parts for elevator(door,<br>
                                            jame, enclosure wall, cage pole, door cover, sill) has<br>
                                            implemented and maintain a Quality Management System<br>
                                            which fuifills the requirements of the following standard<br>
                                            <strong>ISO 9001:2015</strong></p>
                                    </license1>
                                    <license2 class="lic2">
                                        <img src="./web1/img/cer02.jpg" alt="" class="licimg2">
                                        <h3>KMAR ISO 14001:2015</h3>
                                        <p>Production of Entrance parts for elevator(door, jame, enclosure wall, cage pole, door cover, sill) has implemented and maintain a Environmental Management System which fuifills the requirements of the following 
                                            <br>standard <strong>ISO 14001:2015</strong></p>
                                    </license2>
                                    <license3 class="lic3">
                                        <img src="./web1/img/cer03.jpg" alt="" class="licimg3">
                                        <h3>Certificate of Fire Door KS</h3>
                                        <p>* 2P-CO KS60 STS+GI <br>
                                            * 2P-CO KS60 STS<br>
                                            * 2P-CO KS60 SPCC</p>
                                    </license3>
                                    <license4 class="lic4">
                                        <img src="./web1/img/cer04.jpg" alt="" class="licimg4">
                                        <h3>Certificate of Q+ Level 3</h3>
                                        <p><strong>OTIS Certificate of Q+ Level 3</strong> </p>
                                    </license4>
                                </div>

                                
                            </div>

                        </div>
                    </div>
                </section>
                <section class="page" id="page4">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top.jpg" alt="오시는 길">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">회사소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">회사소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.jsp#page1">인사말</option>
                                        <option value="company.jsp#page2">연혁</option>
                                        <option value="company.jsp#page3">보유인증</option>
                                        <option value="company.jsp#page4" selected>오시는 길</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">
                                <a href="./company.jsp#page3" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="인사말1">
                                <a href="./company.jsp#page4" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>오시는 길</h2>
                                <p>HOME>회사소개>오시는 길</p>
                                <br><br>
                                <hr>
                                <br>
                            </div>
                            <div class="pbot4">
                                <img src="./web1/img/h4_bg.png" alt="">
                                <h3>본사/제1공장</h3>
                            </div>
                            <div class="map1">
                                <img src="./web1/img/history2013.jpg" alt="">
                                <img src="./web1/img/line.jpg" alt="" class="line1">
                               
                                <table class="tab4">
                                    <tr>
                                        <td>주소</td>
                                        <td>경남 함안군 칠서면 공단동4길 94</td>
                                    </tr>
                                    <tr>
                                        <td>생산품</td>
                                        <td>Door Panel, Car Panel, Laser Marking, Jamb</td>
                                    </tr>
                                    <tr>
                                        <td>주거래처</td>
                                        <td>OEK</td>
                                    </tr>
                                    <tr>
                                        <td>TEL</td>
                                        <td>055-297-5701</td>
                                    </tr>
                                    <tr>
                                        <td>FAX</td>
                                        <td>055-293-5936</td>
                                    </tr>
                                </table>
                            </div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6506.69587754171!2d128.48310432098268!3d35.37182545726341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356f3788f75a913b%3A0x5df550c3673ad977!2z6rK97IOB64Ko64-EIO2VqOyViOq1sCDsuaDshJzrqbQg6rOE64K066asIDYzMi01!5e0!3m2!1sko!2skr!4v1651511873729!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            <div class="pbot4">
                                <img src="./web1/img/h4_bg.png" alt="">
                                <h3>본사/제2공장</h3>
                            </div>
                            <div class="map1">
                                <img src="./web1/img/history2018.jpg" alt="">
                                <img src="./web1/img/line.jpg" alt="" class="line1">
                               
                                <table class="tab4">
                                    <tr>
                                        <td>주소</td>
                                        <td>경남 함안군 칠서면 공단서1길 71</td>
                                    </tr>
                                    <tr>
                                        <td>생산품</td>
                                        <td>Jamb, Ceiling Asy, Packing</td>
                                    </tr>
                                    <tr>
                                        <td>주거래처</td>
                                        <td>OEK, 현대E/L</td>
                                    </tr>
                                    <tr>
                                        <td>TEL</td>
                                        <td>055-297-5704</td>
                                    </tr>
                                    <tr>
                                        <td>FAX</td>
                                        <td>070-4027-8004</td>
                                    </tr>
                                </table>
                            </div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3253.6626487501853!2d128.4814611156123!3d35.364017580269476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356f382ac82c4ff1%3A0x16717776d892bee1!2z6rK97IOB64Ko64-EIO2VqOyViOq1sCDsuaDshJzrqbQg64yA7LmY66asIDM1NA!5e0!3m2!1sko!2skr!4v1651515792530!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </section>
            </div>
            <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
        </div>
           
        </div>
    <footer id="ft">
     <div class="ft_wrap">
         <nav class="snb">
             <li class="sns1">
                 <a href="" title="youtube"><i class="xi-youtube-play"></i></a>
             </li>
             <li class="sns2">
                 <a href="" title="facebook"><i class="xi-facebook-official"></i></a>
             </li>
             <li class="sns3">
                 <a href="" title="instagram"><i class="xi-instagram"></i></a>
             </li>
        </nav>
        <nav class="fnb">
             <a href="">개인정보 취급 방침</a>
             <a href="">이용 약관</a>
             <a href="">이메일 무단수집 거부</a>  
        </nav>            
        <nav class="copyright">
            <p>주식회사 현대기업 대표자 : 이호철<br>
                경남 함안군 칠서면 공단동4길 94 Tel: 055-297-5701 Fax : 055-293-5936 E-mail : hdke@hdke.co.kr</p>
            <p>Copyright(c) 2021 Hyundae Co.,Ltd. Al rights reserved. Disigned by</p>
            </nav>
       </div>     
      </footer>
    </div>    
    
</body>
</html>
    