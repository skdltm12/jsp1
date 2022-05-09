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
    <meta name="url" content="https://hdke.co.kr/main/main.php">
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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    

    <style>

    </style>

    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <!--스타일 초기화 모듈 연결 -->
       <!-- <link rel="stylesheet" href="./css/reset.css"> -->
       <link rel="stylesheet" href="./css/normalize.css">
       <link rel="stylesheet" href="common.css">
</head>
<body>
    <div class="wrap">
        <header id="hd">
            <div class = "hd_wrap">
                <%@ include file ="nav.jsp" %>
            </div>            
        </header>
        <div id="content">
            <figure id="vs">
                <ul class="img_box">
                    <li>
                        <a href="" class="mainslide">
                            <img src="./web1/img/main03.jpg" alt="메인슬라이드1">
                            <div class="tit_box">    최고 건축의 장 문화를 선도하는 기업 주식회사 현대기업
                                <p class="vs_com1">HYUNDAE SURFACE DESIGN</p>
                                <p class="vs_com2">  We are doing best to increase service quality</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="" class="mainslide">
                            <img src="./web1/img/main02.jpg" alt="메인슬라이드2">
                            <div class="tit_box">최고 건축의 장 문화를 선도하는 기업 주식회사 현대기업
                                <p class="vs_com1">HYUNDAE SURFACE DESIGN</p>
                                <p class="vs_com2">We are doing best to increase service quality</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./web1/img/main01.jpg" alt="메인슬라이드3">
                            <div class="tit_box">최고 건축의 장 문화를 선도하는 기업 주식회사 현대기업
                                <p class="vs_com1">HYUNDAE SURFACE DESIGN</p>
                                <p class="vs_com2">We are doing best to increase service quality</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                <script>
                    $(document).ready(function(){
                    wd = $(window).width();
                    var intv = setInterval(function(){
                        ani1();
                    }, 5000);
                    function ani1(){
                        $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                            $(".img_box li").eq(0).appendTo($(".img_box"));
                            $(".img_box").css("margin-left","0px");
                        });
                    }
                    function ani2(){
                        $(".img_box").css("margin-left",-wd+"px");
                        $(".img_box li:last-child").prependTo($(".img_box"));
                        $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
                    }
                    $(".btn_group .next_btn").click(function(){
                        clearInterval(intv);
                        ani1();
                        intv = setInterval(function(){ ani1(); }, 5000);                    });
                    $(".btn_group .prev_btn").click(function(){
                        clearInterval(intv);
                        ani2();
                        intv = setInterval(function(){ ani1(); }, 5000);
                    });
                });    
                    </script>
              
            </figure>
            <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col2 item1">
                        <a href="equipment.jsp#page1">
                            <h3 class="col_tit a" >EQUIPMENT</h3>
                            <p class="col_com">준비되어있는 주식회사 현대기업은<br>
                            고객의 생산성과 부가가치를 위해<br>끊임없이 움직이고 있습니다.
                            </p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item2">
                        <a href="cosser.jsp#page2">
                            <h3 class="col_tit a">INQUIRY</h3>
                            <p class="col_com">고객과 함께 발전하고<br> 성장하는 파트너 주식회사 <br>
                                현대기업에 궁금하신<br> 사항을 남겨주세요</p>
                            <span class="arrow"></span>
                        </a>

                    </li>
                    <li class="col2 item3">

                        <a href="product.jsp#page1">                            
                            <h3 class="col_tit">표면처리</h3>
                            <p class="col_com"></p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item4">
                    	 <a href="product.jsp#page2">
                            <h3 class="col_tit">Door</h3>
                            <p class="col_com"></p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item5">
                        <a href="product.jsp#page3">
                            <h3 class="col_tit">Wall</h3>
                            <p class="col_com"></p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item6">

                        <a href="product.jsp#page4">
                            <h3 class="col_tit">천정판</h3>
                            <p class="col_com"></p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    <footer id="ft">
 		<%@ include file="ft.jsp" %>
      </footer>
    </div>   
</body>
</html>