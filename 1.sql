use company;
select * from member;
commit;
create table board(bno int(11) primary key auto_increment,btitle varchar(100) not null,
bontent varchar(500) not null,regdate timestamp not null default now(), author varchar(20)
);
desc board;
insert into board(btitle,bontent,regdate,author) values('안녕하세요','첫번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요2','두번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요3','세번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요4','네번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요5','다섯번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요6','여섯번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요7','일곱번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요8','여덟번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요9','아홉번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요0','열번째 게시글입니다.',now(),'관리자');
insert into board(btitle,bontent,regdate,author) values('안녕하세요1','열한번째 게시글입니다.',now(),'관리자');



select * from board;