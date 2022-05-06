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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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

</head>
<body>
    <div class="wrap">
        <header id="hd">
            <div class = "hd_wrap">
                <a href="index.jsp" class="logo"><img src="./web1/img/logo.jpg" alt="로고"></a>
                <nav id="gnb">
                    <ul>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.jsp#page1">인사말</a></li>
                                <li><a href="company.jsp#page2">연혁</a></li>
                                <li><a href="company.jsp#page3">보유인증</a></li>
                                <li><a href="company.jsp#page4">오시는길</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>제품소개</span>
                            <ul class="sub">
                                <li><a href="product.jsp#page1">표면처리</a></li>
                                <li><a href="product.jsp#page2">Door</a></li>
                                <li><a href="product.jsp#page3">Wall</a></li>
                                <li><a href="product.jsp#page4">천정판</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>보유설비</span>
                            <ul class="sub">                                
                                <li><a href="equipment.jsp#page1">판금설비</a></li>
                                <li><a href="equipment.jsp#page2">표면처리설비</a></li>
                                <li><a href="equipment.jsp#page3">공정도</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>고객지원</span>
                            <ul class="sub">
                                <li><a href="cosser.jsp#page1">공지사항</a></li>
                                <li><a href="cosser.jsp#page2">영업문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <p id="tnb">
                    <a href="">로그인</a>
                    <a href="">사이트맵</a>
                    <a href="company.jsp#page4">오시는 길</a></p>
            </div>            
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top4.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">고객지원</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">고객지원</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="cosser.jsp#page1" selected>공지사항</option>
                                        <option value="cosser.jsp#page2">영업문의</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./cosser.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./cosser.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>공지사항</h2>
                                <p>HOME>고객지원>공지사항</p>
                                <br><br>
                                <hr>                                
                            </div>

                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top4.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">고객지원</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">고객지원</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="cosser.jsp#page1">공지사항</option>
                                        <option value="cosser.jsp#page2" selected>영업문의</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./cosser.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./cosser.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>영업문의</h2>
                                <p>HOME>고객지원>영업문의</p>
                                <br><br>
                                <hr>                                
                            </div>
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
