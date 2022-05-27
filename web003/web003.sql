create table board(seq number primary key,
title varchar2(100) not null,
content varchar2(1000) not null,
nickname varchar2(20) not null,
regdate date,
viewcnt number);

insert into board values(1, '샘플2 제목입니다.', '샘플글 2 여기는 샘플 글1에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플2 제목입니다.', '샘플글 2 여기는 샘플 글2에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플3 제목입니다.', '샘플글 3 여기는 샘플 글3에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플4 제목입니다.', '샘플글 4 여기는 샘플 글4에 대한 내용입니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '샘플5 제목입니다.', '샘플글 5 여기는 샘플 글5에 대한 내용입니다.', 'admin', sysdate, 0);

select * from board;
show user;
create table member(mid varchar2(20) primary key,
mpw varchar2(50) not null,
mname varchar2(20) not null,
memail varchar2(100) not null,
mtel varchar2(13) not null,
addr1 varchar2(200) not null,
addr2 varchar2(200) not null,
postcode varchar2(200) not null,
mjoindate date default sysdate,
mrank number default 9);

drop table member;

insert into member values ('admin','123456','관리자','admin@naver.com','010-1111-2222','일산로 62','1563','123-456',sysdate,'1');
insert into member(mid,mpw,mname,memail,mtel,maddress) values ('human1','1234','사람','dkssud1@naver.com','010-2222-2222','일산동 33');
insert into member(mid,mpw,mname,memail,mtel,maddress) values ('human2','1234','김철수','dkssud2@naver.com','010-4343-2424','백석동 313');
insert into member(mid,mpw,mname,memail,mtel,maddress) values ('human3','1234','박짱구','dkssud3@naver.com','010-6666-4444','중산동 93');

select * from member;

commit;

create table product(
pid number primary key,
cate_id varchar2(10) not null,
pname varchar2(100) not null,
pprice number not null,
pcontent varchar2(1000) not null,
pamount number not null,
pimg varchar2(300) not null,
regdate date default sysdate,
best number);

insert into product values (100001,'A','닭꼬치',4500,'닭꼬치입니다',20,'./img/1234.png',sysdate,0);
insert into product values (100002,'A','프리미엄닭꼬치',6500,'프리미엄닭꼬치입니다',20,'./img/12345.png',sysdate,0);
select * from product;
drop table product



