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

</head>
<body>
    <div class="wrap">
        <header id="hd">
            <div class = "hd_wrap">
                <%@ include file="nav.jsp" %>
            </div>            
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top2.jpg" alt="표면처리">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">제품소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="product.jsp#page1" selected>표면처리</option>
                                        <option value="product.jsp#page2">Door</option>
                                        <option value="product.jsp#page3">Wall</option>
                                        <option value="product.jsp#page4">천정판</option>
                                        
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./product.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./product.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>표면처리</h2>
                                <p>HOME>회사소개>표면처리</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="p2bot1">
                                <img src="./web1/img/h4_bg.png" alt="모양">
                                <h3>CE Metal (Color Etching Metal)</h3>                                
                            </div>
                            <div class="p2bot1_1">
                                <img src="./web1/img/ce01.jpg" alt="ce metal">
                                <h3>CE Metal (Color Etching Metal) 이란?</h3>
                                <p>고객이 요구하는 다양한 패턴을 프린트로 출력을 해서 열과 압력을 이용하여 도장강판 표면에 Color를 침투 시키는 방식으로 기존 타 방식에 비해 선명성, 사실감 및 입체감이 우수함.</p>                                
                            </div>
                            <div class="p2bot1">
                                <img src="./web1/img/h4_bg.png" alt="모양">
                                <h3>CE Metal 장점</h3>                                
                                <ul>
                                    <li>다양한 패턴 구현</li>
                                    <li>고선명,미세 질감.(높은 해상도)</li>
                                    <li>단납기 대응 우수.(당사 자체 생산)</li>
                                    <li>도장 및 세척 과정이 없어 친환경적</li>
                                    <li>소량 다품종 생산 및 대량 생산 가능</li>
                                    <li>지문자국 발생 無</li>
                                </ul>
                            </div>
                            <div class="p2bot1">
                                <img src="./web1/img/h4_bg.png" alt="모양">
                                <h3>제품Process</h3>
                            </div>
                            <div class="p2bot1_2">
                                <img src="./web1/img/ce_process01.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/ce_process02.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/ce_process03.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/ce_process04.jpg" alt="">
                            </div>
                            <div class="p2bot1_3">
                                <ul>
                                    <li><p>01</p></li>
                                    <li><p>02</p></li>
                                    <li><p>03</p></li>
                                    <li><p>04</p></li>
                                </ul>
                                <ul>
                                    <li>고객 요구패턴 자료 가져오기</li>
                                    <li>칼라 프린트 출력 및 제단</li>
                                    <li>열 압착 및 전사</li>
                                    <li>제품</li>
                                </ul>
                            </div>
                            <div class="p2bot1">
                                <img src="./web1/img/h4_bg.png" alt="모양">
                                <h3>패턴 사례</h3>     
                                <img src="./web1/img/ce_img01.jpg" alt="">                           
                                <img src="./web1/img/ce_img02.jpg" alt="">                           
                                <img src="./web1/img/ce_img03.jpg" alt="">                           
                                <img src="./web1/img/ce_img04.jpg" alt="">  
                                <br>                         <br>                         
                            </div>
                            <div class="p2bot1">
                                <img src="./web1/img/h4_bg.png" alt="모양">
                                <h3>물성자료</h3>                                
                            </div>
                            <div class="p2bot1_4">
                                <div class="i_b">
                                    <img src="./web1/img/ce_cer.jpg" alt="">
                                </div>
                                <div class="t_b">
                                 <table class="tb4">
                                    <tr>
                                      <th>구분</th>
                                      <th>결과</th>
                                      <th>방법</th>
                                    </tr>
                                    <tr>
                                        <td>CROSS CUT ERI TEST</td>
                                        <td>GOOD</td>
                                        <td>11/11 , 6mm</td>
                                      </tr>
                                      <tr>
                                        <td>MEK RESISTANCE</td>
                                        <td>GOOD</td>
                                        <td>50</td>
                                      </tr>
                                      <tr>
                                        <td>PENCIL HARDNESS</td>
                                        <td>GOOD(2H)</td>
                                        <td>1Kg</td>
                                      </tr>
                                      <tr>
                                        <td>SALT SPRAY</td>
                                        <td>GOOD</td>
                                        <td>240hrs</td>
                                      </tr>
                                      <tr>
                                        <td>WEATHER O-METER</td>
                                        <td>GOOD</td>
                                        <td>240hrs</td>
                                      </tr>
                                      <tr>
                                        <td>HCL</td>
                                        <td>GOOD</td>
                                        <td>5% , HCL 24Hrs</td>
                                      </tr>
                                      <tr>
                                        <td>NaOH</td>
                                        <td>GOOD</td>
                                        <td>5% , NaOH 24Hrs</td>
                                      </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top2.jpg" alt="Door">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">제품소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="product.jsp#page1">표면처리</option>
                                        <option value="product.jsp#page2" selected>Door</option>
                                        <option value="product.jsp#page3">Wall</option>
                                        <option value="product.jsp#page4">천정판</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./product.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./product.jsp#page3" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>Door</h2>
                                <p>HOME>회사소개>Door</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot2_1" target="_blank">
                                <a href="./web1/img/door01.jpg"><img src="./web1/img/door01.jpg" alt=""></a>
                                <a href="./web1/img/door02.jpg"><img src="./web1/img/door02.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top2.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">제품소개</p>
                                
              
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="product.jsp#page1">표면처리</option>
                                        <option value="product.jsp#page2">Door</option>
                                        <option value="product.jsp#page3" selected>Wall</option>
                                        <option value="product.jsp#page4">천정판</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./product.jsp#page2" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./product.jsp#page4" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>Wall</h2>
                                <p>HOME>회사소개>Wall</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot3_1">
                               <a href="./web1/img/wall01.jpg"><img src="./web1/img/wall01.jpg" alt=""> </a>
                               <a href="./web1/img/wall02.jpg"><img src="./web1/img/wall02.jpg" alt=""> </a>
                               <a href="./web1/img/wall03.jpg"><img src="./web1/img/wall03.jpg" alt=""> </a>
                               <a href="./web1/img/wall04.jpg"><img src="./web1/img/wall04.jpg" alt=""> </a>
                               <a href="./web1/img/wall05.jpg"><img src="./web1/img/wall05.jpg" alt=""> </a>
                               <a href="./web1/img/wall06.jpg"><img src="./web1/img/wall06.jpg" alt=""> </a>
                               <a href="./web1/img/wall07.jpg"><img src="./web1/img/wall07.jpg" alt=""> </a>
                               <a href="./web1/img/wall08.jpg"><img src="./web1/img/wall08.jpg" alt=""> </a>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page4">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top2.jpg" alt="천정판">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">제품소개</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">제품소개</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="product.jsp#page1">표면처리</option>
                                        <option value="product.jsp#page2">Door</option>
                                        <option value="product.jsp#page3">Wall</option>
                                        <option value="product.jsp#page4" selected>천정판</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./product.jsp#page3" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./product.jsp#page4" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>천정판</h2>
                                <p>HOME>회사소개>천정판</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="pbot4_1">
                                <a href="web1/img/ceiling01.jpg"><img src="web1/img/ceiling01.jpg" alt=""></a>
                                <a href="web1/img/ceiling02.jpg"><img src="web1/img/ceiling02.jpg" alt=""></a>
                                <a href="web1/img/ceiling03.jpg"><img src="web1/img/ceiling03.jpg" alt=""></a>
                                <a href="web1/img/ceiling04.jpg"><img src="web1/img/ceiling04.jpg" alt=""></a>
                                <a href="web1/img/ceiling05.jpg"><img src="web1/img/ceiling05.jpg" alt=""></a>
                                <a href="web1/img/ceiling06.jpg"><img src="web1/img/ceiling06.jpg" alt=""></a>                                
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
    