create table customer(
name varchar(20) not null ,
id varchar(40) primary key, 
pw varchar(100) not null, 
tel varchar(15) not null, 
email varchar(100) not null, 
birth date, 
regdate date default SYSDaTE, 
visited number(10), 
upoint number(10) default 1000, 
urank number(2) default 9, 
address varchar(200));    
    
insert into customer(name,id,pw,tel,email,birth,address,urank) values ('여승원','tmddnjs123','1234','010-1111-2222','tmddnjs@naver.com','1998-03-11','탄현동','2');
insert into customer(name,id,pw,tel,email,birth,address,urank) values ('admin','admin','123456','010-3333-4444','admin@naver.com','2000-03-11','청담동','1');
insert into customer(name,id,pw,tel,email,birth,address,urank) values ('김아무개','kamg123','1234','010-2222-3333','amg123@naver.com','2001-03-31','백석동','3');
insert into customer(name,id,pw,tel,email,birth,address,urank) values ('박아무개','bamg','1234','010-4444-6666','amg442@naver.com','1984-03-11','중산동','4');
insert into customer(name,id,pw,tel,email,birth,address) values ('일반인','ilban123','1234','010-2222-1232','ilban123@naver.com','1978-03-11','어디동');
insert into customer(name,id,pw,tel,email,birth,address) values ('김축구','sc123','1234','010-2222-8484','sc123@naver.com','2004-02-11','무슨동');
insert into customer(name,id,pw,tel,email,birth,address) values ('박야구','bb123','1234','010-2222-3344','bb123@naver.com','1993-08-21','어떤동');

select * from customer;

create sequence scott.tour_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

create table tourlist(
pno number(10)  not null, 
pid varchar(10) primary key, 
pname varchar(40) not null,
ptype varchar(20) not null,
pcoment varchar(2000) not null,
pimg1 varchar(50), 
pimg2 varchar(50),
pimg3 varchar(50), 
pimg4 varchar(50)); 
-- pid 첫번째 문자 : a:관광명소 B:문화축제 C:숙박 D:음식 E:쇼핑 F:체험 G:여행사
-- pid 두번째 구분코드a : 10:유적지 11:남한강 12:관광휴양지 13:레저스포츠 14:여주5일장
-- pid 두번째 구분코드B : 10:축제행사 11:문화체육시설
-- pid 두번째 구분코드C : 10:콘도미니엄, 11:호텔, 12:모텔,여관, 13:민박,펜션
-- pid 두번째 구분코드D : 10:맛길, 11:모범음식점 12:위생등급제 음식점
-- pid 두번째 구분코드E : 10:특산물
-- pid 두번째 구분코드F : 10:도자기
-- pid 두번째 구분코드G : 10:국내 11:국외 12:일반(국내.외)

insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1001', '영릉(英陵, 세종대왕)','관광명소','조선조 제4대 세종대왕(재위 1418~1450)과 소헌왕후 심씨의 합장릉이다. 대왕은 우리 역사상 가장 위대한 성군으로 한글을 창제하고 측우기, 해시계등 과학기구를 발명하였으며 아악을 정리하고 북방의 야인을 정벌하여 국토를 확장하였으며 대마도를 정벌하여 국방을 튼튼히 하였다. 학문을 충정하여 학자를 양성하고 활자를 개량하여 용비어천가, 농사직설등 수많은 책을 발간하였다. 왕릉은 조선왕조의 능제를 가장 잘 나타내고 있는 능의 하나로서 합장릉임을 알 수 있는 두 개의 혼유석이 있고 봉분 둘레에 돌난간을 둘렀으며 12개의 석주에는 12간지를 문자로 새겨놓았다.<br>능의 정중앙에 팔각의 장명등이 있으며 주위에 석호·석양·석마·문인석·무인석·망주석을 배치했고 능뒤에는 나즈막한 곡담을 둘렀다. 능밑에는 제사를 지내는 정자각과 제사때 음식을 준비하던 수라간, 능을 지키는 관리가 살던 수복방이 있고 정자각 동편에 능비와 비을 세웠다. 정문을 들어서면 좌측에 해시계 자격루, 관천대, 측우기,혼천의 등 각종 과학기구를 복원해 놓았으며 세종전에는 대왕의 업적과 관련되어 여러 가지 유물과 자료들이 전시되어 학술의 장으로 활용되고 있다.','./img/a10011.jpg','./img/a10012.jpg','./img/a10013.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1002', '영릉(英陵, 효종대왕)','관광명소','조선 제17대 효종(재위1649∼1659)과 왕비 인선 왕후 장씨 가 모셔진 쌍릉이다. 효종릉 역시 능역과 푸른 소나무들이 주변에 울창하여 그윽함을 풍기지만 세종릉과 바로 붙어 있어 찾는이가 적어 사방이 조용하고 호젓하다. 효종은 인조의 둘째 아들로 1619년(광해군11) 5월 22일 태어나 1626년(인조4) 봉림대군에 봉해지고 1636년 (인조14) 병자호란으로 형인 소현세자와 함께 인질로 8년간이나 청나라 심양에 볼모로 잡혀가 풀려 나와서 1646년(인조23) 소현 세자가 변사하자 뒤를 이어 왕세자에 책봉되고 1649년 (인조27) 5월13일 창덕궁 인정문에서 즉위하였다.<br>효종은 즉위 후 대동법을 실시하고 상평통보를 주조하여 화폐를 널리 보급하였다. 조선왕조가 당한 굴욕을 씻고자 청나라 정벌을 계획하였으나 뜻을 이루지 못하고 1659년 5월 4일 재위10년만에 창덕궁 대조 전에서 승하하였다.','./img/a10021.jpg','./img/a10022.jpg','./img/a10023.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1003', '신륵사','관광명소','신륵사는 아름다운 경관과 많은 유물·유적들을 간직 하고 있으며 신라 진평왕 때 원효 대사가 창건했다는 설이 있고, 고려 우왕 2년 (1376년)에 나옹선사가 입적하면서 유명한 절이 되었다. 신륵사를 일명 "벽절" 이라 부르게 한 다층 전탑이 묵묵히 여강을 굽어보고 있으며 나옹선사의 당호를 딴 정자 강월헌(江月軒)에서는 그 옛날 시인 묵객들이 시 한수를 읊고 있는 것 같다.<br>신륵사는 남한강변의 수려한 자연 경관과 어우러져 많은 사람들이 자주 찾는 곳에 위치함으로서 대중과 접하고 구도의 기회를 넓힐 수 있는 곳이다.(국가지정문화재 8점, 도지정 문화재 7점)<br>신륵사 관광지<br>신륵사는 신라시대 원효대사가 창건했다고 전해진 전통사찰로 국내에서는 보기 드물게 강변에 위치한 사찰이며1977년도에 32만 여평이 관광지로 지정 개발되어 현재 90%의 공정을 보이고 있다. 공공시설은 완공된 단계이며, 각종 편의시설이 잘 갖추어져 있고, 서울에서 1시간대에 위치하고 있어 관광지로 각광 받는 곳이다.','./img/a10031.jpg','./img/a10032.jpg','./img/a10033.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1004', '명성황후생가','관광명소','조선 제26대 고종 황제의 비로 개화기에 뛰어난 외교력으로 자주성을 지키면서 개방과 개혁을 추진하시다 1895년 10월 8일 새벽 일본인에 의해 시해당하여 파란만장한 일생을 마쳤던 명성황후가 출생하여 8세까지 살던 집이다. 1687년(숙종 13년) 왕의 장인 민유중의 묘막(墓幕) 으로 건립되었는데 당시 건물로서 남아있는 것은 안채 뿐이었으나, 1995년에 행랑채와 사랑채, 별당채 등이 복원됨으로써 면모가 일신되었으며,명성 황후가 어렸을 때 공부했다는 방이 있었던 자리에 탄생을 기념해 세운 "명성황후 탄강구리(明成皇后 誕降舊里)" <명성황후가 태어나신 옛 마을>이라 새겨진 비가 세워져 있다.<br>생가 앞에 기념관이 건립되어 각종자료·유품등이 전시되어 있으며, 161석 규모의 공연장(문예관)이 있어 명성황후에 대한 영상물을 상영하고 있다.<br>명성황후 기념관<br>명성황후 생가 맞은편에 위치한 명성황후 기념관은 왜곡된 역사를 바로 세워 올바른 역사관을 정립하고자 건립한 기념관이다. 520㎡의 전시실은 명성황후와 고종의 영정 등을 비롯한 관련 자료들이 전시되어 있으며, 계절에 따라 변화하는 자연경관과 잘 어우러져 봄, 가을로 많은 관광객이 찾는 곳이다. 기념관 주변으로 넒은 주차장과 공중화장실, 연못 등을 설치하여 관람객의 편의를 도모하고 있다.<br>감고당 중건<br>인현왕후의 사저이며 명성황후가 8살에 이사하여 왕비 간택 전 까지 머물렀던 곳으로서 영조가 감고당이라 명하였으며 처음에는 안국동에 있었으나 1966년에 쌍문동으로 이전하였다가 2004년에 여주시에서 인수하여 2008년도에 중건을 완료하였다.','./img/a10041.jpg','./img/a10042.jpg','./img/a10043.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1005', '고달사지','관광명소','고달사는 신라 경덕왕 23년(764)에 창건되었다고 전하며, 고달원이라고도 하는데 신라 이래의 유명한 삼원(三院) 즉 도봉원(道峰院), 희양원(曦陽院), 고달원(高達院)중의 하나로 고려시대에는 국가가 관장하는 대찰이었으므로 왕실의 비호를 받았던 곳이다. 현재 이곳에는 국보 제4호인 고달 사지부도와 보물 제 6·7·8호가 있으며, 이들 석조유물들은 하나같이 넘치는 힘과 호방한 기상이 분출하는 가운데 화려하고 장엄한 기운을 간직하고 있다.<br>창건 당시의 사찰은 실로 광대하여 지금의 상교리 일대가 전부 사역이었던 것으로 추정되며 절부근의 큰마을이 형성되었음을 짐작케 한다. 지금 광활한 사역에는 유물만 남아 있다. 1990년도 주변정비사업을 시작으로 현재까지 복원을 위한 발굴조사가 진행중이다.','./img/a10051.jpg','./img/a10052.jpg','./img/a10053.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1006', '파사성','관광명소','파사성 정상을 중심으로 능선을 따라 축성한 파사성은 성벽 등 이 비교적 많이 남아 있으며, 둘레는 약 943m이며 성벽중 최고 높은 곳은 6.25m나 되나 낮은 곳은 1.4m되는 곳도 있다. 천서리를 면한 동문지(東門址), 금사면 이포리를 면한 남문지(南門址)에는 문앵(門櫻)을 세웠던 고주형초석 2기와 평주 초석이 남았고 동문지에는 옹성문지(甕城門地)가 남아 있다. 한강에 연하여 있어 성 일부는 강언덕에 돌출된 자리를 잡아 남한강의 상하류를 한눈에 관찰할 수 있는 전략적 요충지이다.<br>삼국시대에 축성되었으며 신증동국여지승람에는 선조 25년(1592년) 에 임진란이 일어났을 때 유성룡의 발의에 따라 승군총익인 의암(義巖)이 승군을 동원하여 쌓은 둘레 1,100보의 성첩을 중수한 기록이 있다(왕복 1시간 소요)','./img/a10061.jpg','./img/a10062.jpg','./img/a10063.jpg');

insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1101', '남한강','관광명소','남한강 중에서도 아름답기로 이름난 여주 구간에 건설된 3개의 보(이포보 · 여주보 · 강천보)는 홍수와 가뭄에 시달려 온 한강 유역의 치수를 담당하는 데 큰 역할을 하고 있다. 뿐만 아니라 지역 주민과 관광객들을위한 복합 공간들이 들어서며 관광과 여가를 한꺼번에 즐길 수 있는 남한강의 랜드마크로 자리 잡았다. 특히 빼어난 절경과 문화유산 및 다양한 시설들과 연계된 자전거길, 도보길, 레저 및 생태 공간 등이 곳곳에 산재해 수도권의 새로운 명소로 거듭나고 있다.','./img/a11011.jpg','./img/a11012.jpg','./img/a11013.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1102', '이포보','관광명소','여주의 상징 새인 백로의 날개 위에 알을 올려놓은 형상인 이포보는 ‘생명의 탄생과 비상’을 응변한다.<br>보 주변으로는 수중광장, 문화관광, 자연형 어도, 전망대 등의 친수시설이 들어서 있으며, 인근 당남지구와 여주저류지 등에는 자연학습장, 스포츠파크, 자전거쉼터, 캠핑장, 피크닉공원 등이 조성되어 관광은 물론 생태체험과 레저 및 여가 활동을 동시에 즐길 수 있는 공간으로 인기를 끌고 있다.','./img/a11021.jpg','./img/a11022.jpg','./img/a11023.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1103', '여주보','관광명소','세종대왕의 위대함을 모티브로 설계한 여주보는 가동보 하부 기둥을 자격루를 재해석해서 디자인했으며, 보 끝의 세종광장은 해시계인 앙부일구의 형상을 반영하여 조성하였다. 물억새 군락지, 자연형 어도, 갈대언덕, 야생초 화원 등 자연그대로의 멋을 살린 공간배치가 편안함과 여유로움을 더하며, 세종광장과 피크닉장, 다목적광장 등에서는 다양한 문화행사와 여가활동을 즐길 수 있다.','./img/a11031.jpg','./img/a11032.jpg','./img/a11033.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1104', '강천보','관광명소','한강의 명물이던 황포돛배의 모습을 형상화한 강천보는 한강문화관, 강천섬 수변공원과 함께 천혜의 풍광을 자랑한다.<br>특히 물빛누리로 이름 지어진 보의 야간조명은 시간대별, 계절별로 각기 다른 분위기를 연출해 보는 이들의 탄성을 끌어낸다. 한강통합물관리센터 역할을 하는 강천보는 남한강 투어의 새로운 중심지로 인근에 신륵사관광지(금은모래지구),금은모래강변공원, 황포돛배나루터 등 볼거리와 즐길거리가 이어져 감동을 더한다.','./img/a11041.jpg','./img/a11042.jpg','./img/a11043.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1105', '자전거길','관광명소','맑고 푸르게 넘실대는 강을 따라 상쾌한 강바람, 물바람을 만끽하며 달린다.<br>남한강의 수려한 경관과 이포보, 여주보, 강천보의 3보와 갖가지 수목들로 말끔하게 단장된 수변 경치가 페달을 밟는 다리에 힘을 더한다.<br>곳곳에 라이더들을 위한 휴식공간과 편의시설들이 자리하고 있어 더욱 싱그러운 여주, 남한강 자전거 여행! 지금 떠나보자!','./img/a11051.jpg','./img/a11052.jpg','./img/a11053.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1106', '도보길','관광명소','여강(남한강 여주 구간의 애칭)을 중심으로 산과 들이 조화를 이룬 풍경은 한 폭의 산수화를 보는 듯해, 일찍이 목은 이색은 "반은 단청 같고 반은 시와 같다"고 그 아름다움을 노래했다. 여강을 따라 느리게 걷는 길은 바쁘게만 살아온 우리들이 미처 보지 못했던 세상의 다양성과 아름다움을 보게 해준다. 누군가와 소통을 원한다면 여강길을 걸어보자!','./img/a11061.jpg','./img/a11062.jpg','./img/a11063.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1107', '레저 및 생태공간','관광명소','여주, 남한강에선 머물러야 비로소 보이는 것들이 있다.<br>자연 속의 작은 생명들이 속속들이 보이고, 사람과 사람 간에 나누는 정도 눈에 띄며, 그들, 자연과 인간이 서로 공존하며 살아갈 수 있는 방법도 알게 된다. 우리가 살고 있는 환경이 회복되며 우리네 삶도 건강하게 치유되고, 강이 살아나며 역사와 문화도 되살아난다. 강에 머물면 보이는 그 경이로움, 느껴보자!','./img/a11071.jpg','./img/a11072.jpg','./img/a11073.jpg');

insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1201', '신륵사관광지','관광명소','시원한 남한강을 따라 자전거도로, 각종 체육시설과 여주박물관, 도자세상, 농특산물 판매장이 있으며, 매년 여주도자기축제와 오곡나루축제가 이곳에서 개최되고 있다. 특히 남한강을 가르는 황포돛배(Yellow Sail boat)와 수상레저를 즐길 수 있는 가족 · 연인들의 나들이 공간이다.','./img/a12011.jpg','./img/a12012.jpg','./img/a12013.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1202', '금은모래강변공원','관광명소','우리나라 생태공원 중 최대 규모를 자랑하는 금은모래 강변공원에는 야생초 화원을 비롯한 갑돌이와 갑순이 공원, 수변관찰데크 및 야외광장이 있다. 특히 전시모형공원에는 시대별로 1/20로 축소한 옹관묘와 안학궁, 장군총 외에 다수의 명승고적지를 한눈에 볼 수 있도록 꾸며져 학생들의 학습공간으로 각광받고 있다.','./img/a12021.jpg','./img/a12022.jpg','./img/a12023.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1203', '황학산수목원','관광명소','황학산수목원은 자연을 아끼고 사랑하는 사람들을 위한, 자연과 인간이 교감할 수 있는 공간입니다. 우리 수목원은 습지원, 석정원, 산열매원, 미니가든, 항아리정원 등 식물의 생태와 기능에 따라 특색화한 14개의 테마정원으로 이루어져 있으며, 멸종위기에 처한 단양쑥부쟁이, 층층둥굴레 군락복원 등 식물이 자생할 수 있는 환경을 만들고 있습니다.','./img/a12031.jpg','./img/a12032.jpg','./img/a12033.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1204', '영월루/영월공원','관광명소','영월루에서는 남한강 푸른 물줄기와 멀리 양섬과 강 건너 신륵사의 아름다운 전경을 한 눈에 내려다 볼 수 있다. 누각 아래 기암절벽 바위에는 ‘마암(馬巖)’ 이란 글자가 선명하게 새겨져 있다.<br>* 마암 : 신라 경덕왕때 마암바위 아래 강물에서 황룡마와 여룡마(검은용마)가 나타나 당시 고을 이름을 황려현으로 고쳤다고 전한다.','./img/a12041.jpg','./img/a12042.jpg','./img/a12043.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A1205', '강천섬','관광명소','강천섬<br>노란 은행나무 잎과 새하얀 목련이 어우러진 산책길이 여유와 낭만을 느낄 수 있도록 해준다.<br>또한 연한 보랏빛을 띠는 단양쑥부쟁이는 '기다림'과 '인내'를 상징하며 한국인의 정서를 잘 보여준다.<br>단양쑥부쟁이는 한때 멸종위기논란에 휩싸였지만 강천섬을 중심으로 곳곳에서 자태를 뽐내고 있다.','./img/a12051.jpg','./img/a12052.jpg','./img/a12053.jpg');



insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'B1001', '한글날 경축행사','문화축제','세종대왕의 한글창제를 경축하고 한글의 독창성과 우수성을 선양하기 위한 행사입니다.','./img/B10011.jpg','./img/B10012.jpg','');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'C1001', '콘도미니엄','숙박','푸른 들녘을 끼고 흐르는 남한강 줄기 따라 강변의 정취가 더해지는 신륵사와 세종대왕의 발자취를 돌아보게 해주는 세종대왕릉, 서울에서 불과 1시간여 남짓 전원을 따라 이어지는 가까운 휴식처, 맛 좋은 여주쌀로 지은 여주 쌀밥과 남한강 특산물 쏘가리 매운탕의 감칠맛이 더욱 정다운 멋과 맛의 고장 여주에서 색다른 망중한의 기쁨을 느낄 수 있다.','','','');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'D1001', '여주맛길','음식','남한강따라 즐기는 여주 맛기행','./img/D10011.jpg','','');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'E1001', '여주쌀','특산물','우리 역사속에서 쌀의 발원지와<br>최적지로 인정받아온 여주!<br>여주쌀은 우리 민족의 삶에 윤택함을 더하여 함께 역사를 만들어 옛 명성을 그대로 이어오고 있는 것입니다.<br>여주 점동면 혼암리 선사유적지에서 출토된 BC13~17세기로 추정되는 “탄화미”로 미뤄 예부터 남한강 유역을 중심으로 한 여주쌀농사의 역사가 수천년에 이른다는 것을 알 수 있습니다.','./img/E10011.jpg','./img/E10012.jpg','./img/E10013.jpg');

create table review(rno number(10) primary key,
rtitle varchar(50) not null,
rplace varchar(50) not null,
rtodate date not null,
rfromdate date not null,
rcontent varchar(500) not null,
rpic1 varchar(50),
rpic2 varchar(50),
rid varchar(10),
rpw varchar(40),
rdate date default sysdate,
viewcnt number(10)
);
commit;
create sequence scott.rv_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
insert into review values (rv_seq.nextval,'생각보다 재미없었어요','자전거길','2022-01-07','2022-01-07','힘들기만 하고 재미 없었습니다. 분발하도록 하세요','','','kamg123','1234',sysdate,'');

create table notice (nno number(10) primary key,
    ntitle varchar(50) not null,
    ncontent varchar(500) not null,
    npic varchar(50),
    resdate date default sysdate,
    nname varchar(20),
    viewcnt number(11)
); 
create sequence scott.noti_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
insert into notice values(1,'여주 마라톤대회 일정 공지','우천으로 취소됨을 알립니다','',sysdate,'admin','');

select * from tourlist;
select * from review;
select * from notice;