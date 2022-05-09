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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
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
                        <img src="./web1/img/sub_top3.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">보유설비</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">보유설비</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="equipment.jsp#page1" selected>판금설비</option>
                                        <option value="equipment.jsp#page2">표면처리설비</option>
                                        <option value="equipment.jsp#page3">공정도</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./equipment.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./equipment.jsp#page2" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>판금설비</h2>
                                <p>HOME>보유설비>판금설비</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="p3bot1">
                                <div class="pbot3">
                                    <h2>전문적인 설비보유를 통한 최고의 품질과 고객만족을 위해 힘쓰고 있습니다.</h2>
                                    <img src="./web1/img/h4_bg.png" alt="">
                                    <p>판금설비</p>
                                </div>
                                <div class="pic_box">                                           
                                    <div class="pic">
                                        <a href="./web1/img/fac01.jpg"><img src="./web1/img/fac01.jpg" alt=""></a>
                                        <p>Bending기(2면 절곡)</p>                                    
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac02.jpg"><img src="./web1/img/fac02.jpg" alt=""></a>
                                        <p>CNC</p>
                                    </div class="pic">
                                    <div class="pic">
                                        <a href="./web1/img/fac04.jpg"><img src="./web1/img/fac04.jpg" alt=""></a>
                                        <p>Folding기(4면 절곡)</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac06.jpg"><img src="./web1/img/fac06.jpg" alt=""></a>
                                        <p>P4(자동절곡기)</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac07.jpg"><img src="./web1/img/fac07.jpg" alt=""></a>
                                        <p>S4(자동천공기)</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac08.jpg"><img src="./web1/img/fac08.jpg" alt=""></a>
                                        <p>V-cutting기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac09.jpg"><img src="./web1/img/fac09.jpg" alt=""></a>
                                        <p>vibration기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac10.jpg"><img src="./web1/img/fac10.jpg" alt=""></a>
                                        <p>레이저 마킹기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac11.jpg"><img src="./web1/img/fac11.jpg" alt=""></a>
                                        <p>레이져기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac12.jpg"><img src="./web1/img/fac12.jpg" alt=""></a>
                                        <p>전단기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac13.jpg"><img src="./web1/img/fac13.jpg" alt=""></a>
                                        <p>절곡기</p>
                                    </div>
                                    <div class="pic">
                                        <a href="./web1/img/fac14.jpg"><img src="./web1/img/fac14.jpg" alt=""></a>
                                        <p>천공기</p>
                                    </div>
                                </div>
                                </div>
                                <div class="pbot3">                                    
                                    <img src="./web1/img/h4_bg.png" alt="">
                                    <p>Door 판금&조립</p>
                                </div>
                                <ul class="pic_box2">
                                    <li >
                                        <p><img src="./web1/img/door01 (1).jpg" alt=""></p>
                                        <span>판금(P4)</span>
                                    </li>
                                    <li >
                                        <p><img src="./web1/img/door02 (1).jpg" alt=""></p>
                                        <span>조립, Door Shoe, Key</span>
                                    </li>
                                    <li>
                                        <p><img src="./web1/img/door03.jpg" alt=""></p>
                                        <span>출하대기</span>
                                    </li>
                                    <li >
                                        <p><img src="./web1/img/door04.jpg" alt=""></p>
                                        <span>출하</span>
                                    </li>
                                </ul>    
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top3.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">보유설비</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">보유설비</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="equipment.jsp#page1">판금설비</option>
                                        <option value="equipment.jsp#page2" selected>표면처리설비</option>
                                        <option value="equipment.jsp#page3">공정도</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./equipment.jsp#page1" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./equipment.jsp#page3" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>표면처리설비</h2>
                                <p>HOME>보유설비>표면처리설비</p>
                                <br><br>
                                <hr>
                                
                            </div>
                            <div class="pbot3">                                    
                                <img src="./web1/img/h4_bg.png" alt="">
                                <p>Laser Marking의 표현 기법</p>
                            </div>
                            <div class="p3bot2">
                                <h3>제작공정</h3>
                                <img src="./web1/img/laser01.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/laser02.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/laser03.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/laser04.jpg" alt="">
                                <img src="./web1/img/arrow.png" alt="">
                                <img src="./web1/img/laser05.jpg" alt="">
                            </div>
                            <div class="p3bot2_1">
                                <ul>
                                    <li><p>01</p></li>
                                    <li><p></p></li>
                                    <li><p>02</p></li>
                                    <li><p></p></li>
                                    <li><p>03</p></li>
                                    <li><p></p></li>
                                    <li><p>04</p></li>
                                    <li><p></p></li>
                                    <li><p>05</p></li>
                                </ul>
                                <ul>
                                    <li>소재입고(Mirror)</li>
                                    <li><p></p></li>
                                    <li>표면먼지제거</li>
                                    <li><p></p></li>
                                    <li>레이저마킹</li>
                                    <li><p></p></li>
                                    <li>검사</li>
                                    <li><p></p></li>
                                    <li>포장</li>
                                </ul>
                            </div>
                            <div class="p3bot2_2">
                                <h3>Laser Marking 설비 및 작업 사진</h3>
                                <img src="./web1/img/laser_img.jpg" alt="">
                            </div>
                            <div class="p3bot2_3">
                                <h3>표현효과</h3>
                                <div class="laser1">                                   
                                    <img src="./web1/img/laser.jpg" alt="">
                                </div>
                                <div class="laser2">
                                    <table class="tb5">
                                        <tr>
                                            <th>정밀한 표현 ( Precise Representation )</th>
                                        </tr>
                                        <tr>
                                            <td>Etching, Silk Screen 기법에서는 패턴의 구현에 있어 밀리미터(mm)단위 이하의 패턴에 대한 표현이 거의 불가능 하였지만, Laser Marking의 경우 마이크로(㎛) 단위까지 표현이 가능해 짐으로써, 기존 제품에서 볼 수 없었던 다양한 종류의 패턴과 표현을 통해서 한층 더 고급스러운 이미지 구현이 가능하여 타사 제품과의 비교 우위를 점할 수 있으며, 고객의 Need와 Wants를 반영한 제품의 생산이 가능합니다.</td>
                                        </tr>
                                        <tr>
                                            <th>색상의 변화 ( Gradation of color )</th>
                                        </tr>
                                        <tr>
                                            <td>Etching 및 Silk Screen 기법의 패턴 구현에 있어 가장 단점은 정밀한 표현과 색상의 변화(Gradation)를 표현하지 못하는 것입니다. Laser Marking은 이런 부분을 모두 충족 할 수 있으며, 고객이 원하는 패턴구현이 가능 하여, 브랜드의 가치를 한층 높일 수 있는 표면처리 기술입니다.</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="pbot3">                                    
                                <img src="./web1/img/h4_bg.png" alt="">
                                <p>Laser Marking 적용 분야</p>
                            </div>
                            <div class="tb6_div">
                                <table class="tb6">
                                    <tr>
                                        <th>적용분야</th>
                                        <th>적용용도</th>
                                    </tr>
                                    <tr>
                                        <td>Elevator</td>
                                        <td>Hall Door, Car Door, Car Panel, Jamb, Ceiling</td>
                                    </tr>
                                    <tr>
                                        <td>Fire Door</td>
                                        <td>Fire Door(방화 문)</td>
                                    </tr>
                                    <tr>
                                        <td>Building Interior</td>
                                        <td>Curtain Wall Panel(건물외장 판넬), Wall Panel(내장 판넬), Ceiling Panel(천정 판넬)</td>
                                    </tr>
                                    <tr>
                                        <td>Home Appliances</td>
                                        <td>Refrigerator(냉장고),Washer(세탁기),Air conditioner(에어컨), 기타 가전제품</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="pbot3">                                    
                                <img src="./web1/img/h4_bg.png" alt="">
                                <p>Etching기법과 비교</p>
                            </div>
                            <div class="tb7_div">
                                <table class="tb7">
                                    <tr>
                                        <th colspan="2" >구분</th>                
                                        <th></th>
                                        <th>Laser Marking</th>
                                        <th>Etching</th>
                                    </tr>
                                    <tr>         
                                        <td colspan="2">명암 표현</td>                
                                        <td></td>
                                        <td>명암 표현 가능</td>
                                        <td>명암  표현  불가</td>
                                    </tr>
                                    <tr>           
                                        <td colspan="2">입체감</td>                
                                        <td></td>
                                        <td>Gradation을 통한<br>
                                            입체감(3D 디자인) 표현 가능	</td>
                                        <td>입체감 표현 불가</td>
                                    </tr>
                                    <tr>     
                                        <td colspan="2">작업방법</td>                     
                                        <td></td>
                                        <td>Laser 빔 출력·표면 접촉 마킹 방식</td>
                                        <td>물리·화학적 반응을 통한 부식</td>
                                    </tr>
                                    <tr>    
                                        <td colspan="2">환경측면</td>                            
                                        <td></td>
                                        <td>친환경 제품 (오·폐수 전무)</td>
                                        <td>오·폐수 발생</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">품질측면</td>
                                        <td colspan="1" class="a123">영구성</td>
                                        <td></td>
                                        <td>반영구적<br>
                                            ( 화학시험연구원 시험 통과 )</td>
                                        <td>반영구적<br>
                                            (단,부식된 부위에 이물질 접착 발생)</td>
                                    </tr>
                                    <tr>
                                        <td colspan="1">정밀도</td>                
                                        <td></td>
                                        <td>마이크로(㎛) 단위까지의 표현 가능</td>
                                        <td>㎜단위 이하는 표현 불가능</td>
                                    </tr>
                                    <tr>
                                        <td colspan="1">일관성</td>                
                                        <td></td>
                                        <td>시·종 제품의 해상도,정밀도가 일치함</td>
                                        <td>일관성 부족</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">원가 측면</td>                
                                        <td></td>
                                        <td>1.부대비용 불필요( 인쇄필름,제판비 )<br>
                                            2.엣칭 패턴은 엣칭 단가와 동일</td>
                                        <td> 1. 매 패턴 마다 인쇄용 필름비 소요<br>
                                            2. 패턴 수정 시 신규 필름 재  제작</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">작업 공정</td>                
                                        <td></td>
                                        <td>1차 공정으로 작업완료</td>
                                        <td>인쇄 후 화학 제품에 의한 부식</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./web1/img/sub_top3.jpg" alt="서브탑">
                        <div class="tit_box">
                            <h2 class="sub_tit">We are doing best to increase service quality</h2>
                            <p class="sub_com">보유설비</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">보유설비</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="equipment.jsp#page1">판금설비</option>
                                        <option value="equipment.jsp#page2">표면처리설비</option>
                                        <option value="equipment.jsp#page3" selected>공정도</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <div class="ptop1">                               
                                <a href="./equipment.jsp#page2" class="pg_prev"><img src="./web1/img/prev.png" alt="이전버튼"></a>
                                <img src="./web1/img/h3_bg.png" alt="표면처리1">
                                <a href="./equipment.jsp#page3" class="pg_next"><img src="./web1/img/next.png" alt="다음버튼"></a>
                                <h2>공정도</h2>
                                <p>HOME>보유설비>공정도</p>
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                            <div class="p4bot1">
                            	<ul>
                                <li>
                                    <img src="./web1/img/process01.png" alt="">
                                    <p>01</p>
                                    <span>Warehousing</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process02.png" alt="">
                                    <p>02</p>
                                    <span>Shearing</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process03.png" alt="">
                                    <p>03</p>
                                    <span>Etching</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process04.png" alt="">
                                    <p>04</p>
                                    <span>Precsion Shearing</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process05.png" alt="">
                                    <p>05</p>
                                    <span>Punching</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process06.png" alt="">
                                    <p>06</p>
                                    <span>Bending</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process07.png" alt="">
                                    <p>07</p>
                                    <span>Welding</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process08.png" alt="">
                                    <p>08</p>
                                    <span>Assembly</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process09.png" alt="">
                                    <p>09</p>
                                    <span>Inspection</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process10.png" alt="">
                                    <p>10</p>
                                    <span>Packing</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process11.png" alt="">
                                    <p>11</p>
                                    <span>Shipment</span>
                                </li>
                                <li>
                                    <img src="./web1/img/process12.png" alt="">
                                    <p>12</p>
                                    <span>출고</span>
                                </li>
                                </ul>
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
    