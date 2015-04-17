-- SQL
-- 1) 데이터 정의 언어(DDL) : create, alter, drop
-- 2) 데이터 조작 언어(DML) : insert, update, delete, select
-- 3) 데이터 제어 언어(DCL) : grant, revoke

-- 테이블 생성
create table member
(
	id				varchar2(15) 	primary key,
	password		varchar2(10),
	name			varchar2(20),
	age				number,
	gender 			char(1),
	addr			varchar2(100),
	regdate			date		default sysdate

)

select * from member
where id='test'


select id from member
select id, password from MEMBER

insert into member
values('test2', '1234', '홍길동', 20, '1', '서울시', sysdate)
insert into member
values('test1', '1234', '홍길동', 20, '1', '서울시', '2015-04-17')

drop table member


update member
set addr = '경기도'
where id='test1'


delete member
where id='test'