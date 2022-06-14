select * from ace;

select * from real_A2;

select 고객번호, count(*) 

create table z as 
select 고객번호 고객번호, sum(구매금액) 구매금액 from ace where 제휴사='A' and 구매일자 between 20140101 and 20150630  group by 고객번호 order by 고객번호;
drop table z;
select * from real_A2;  
select ratio_to_report(sum(A객단가) over () as percent from real_A2 group by 고객번호 order by 고객번호;


create table RF as
select 고객번호 고객번호, count(구매일자) 구매빈도, max(구매일자) 최근날짜 from ace where 구매일자 between 20140101 and 20150630  group by 고객번호 order by 고객번호;

select * from RF;
create table M as
select 고객번호 고객번호, sum(구매금액) 구매금액 from ace group by 고객번호 order by 고객번호;

select count(고객번호) from RF;

select 고객번호, count(영수증번호)
from  s_pur_copy where 제휴사 ='A' and 구매일자 between 20140101 and 20150930  group by 고객번호 order by 고객번호;

select * from ex2;
select * from area2;

select * from purprod;
create table count5 as
select 고객번호 고객번호,sum(구매금액) 총합 from purprod group by 고객번호 order by 고객번호;
select count(*) from count5;

create table count3 as
select 고객번호 고객번호,sum(구매금액) 총합 from s_pur_copy group by 고객번호 order by 고객번호;

create table count4 as
select 고객번호 고객번호,sum(구매금액) 총합 from ex2 group by 고객번호 order by 고객번호;

select * from count4;
select 총합 from count4 where 고객번호 = 19383;
select 총합 from count3 where 고객번호 = 19383;

create table count2 as
select 고객번호 고객번호,sum(구매금액) 총합 from s_pur_copy group by 고객번호 order by 고객번호;
select count(고객번호) from count;

drop table time2;
create table time2 as
select 고객번호 고객번호, count(구매일자) 구매빈도 from ex2 where 구매일자 between 20140101 and 20150930  group by 고객번호 order by 고객번호;

select * from ex2;
select * from ex;
select * from real;
select * from ex3;
select count(*) from ex2;

drop table count;
create table count as
select 고객번호 고객번호,sum(구매금액) 총합 from ex2 group by 고객번호 order by 고객번호;
select count(고객번호) from count;


select sum(구매금액) from s_pur_copy group by 고객번호 order by 고객번호;

select sum(구매금액) from s_pur_copy where 제휴사='A' group by 고객번호 order by 고객번호;

drop table time;
create table time as
select 고객번호 고객번호, max(구매일자) 구매일자, sum(구매금액) 구매금액 from purprod where 구매일자 between 20140101 and 20150930  group by 고객번호 order by 고객번호;

drop table time2;
create table time2 as
select 고객번호 고객번호, count(구매일자) 구매빈도 from purprod where 구매일자 between 20140101 and 20150930  group by 고객번호 order by 고객번호;

-- 객단가 구하기
select * from purprod;
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) from purprod where 구매일자 between 20140101 and 20150930  group by 고객번호 order by 고객번호;



select * from time;

create table s_pur_copy_A as select * from s_pur_copy where 제휴사='A';
select * from s_pur_copy_A;

create table s_pur_copy_B as select * from s_pur_copy where 제휴사='B';


select 고객번호,sum(구매금액) from s_pur_copy where 제휴사='A' and 구매일자 like '%2014%' group by 고객번호 order by 고객번호;

select 고객번호,sum(구매금액) from s_pur_copy where 제휴사='A' and 구매일자 like '%2015%' group by 고객번호 order by 고객번호;

--create table s_pur_copy2 from s_pur_copy where 


create table s_pur_copy_A1 as
select * from ex2;

select * from ex2 where 제휴사 = 'B';

select * from s_pur_copy_A1;

create table s_pur_copy_A2 as select * from s_pur_copy_A1 where 구매일자 like '%2014%';

-- 소분류코드 1을 14년도에 구매한 총액
drop table s_pur_copy_A4;
create table s_pur_copy_A4 as 
select 고객번호,sum(구매금액) 총구매액14 from s_pur_copy_A2 where 소분류코드=1 group by 고객번호 order by 고객번호;
select * from s_pur_copy_A4;

-- 소분류코드 1을 15년도에 구매한 총액
drop table s_pur_copy_A5;
create table s_pur_copy_A5 as 
select 고객번호,sum(구매금액) 총구매액15 from s_pur_copy_A3 where 소분류코드=1 group by 고객번호 order by 고객번호;
select * from s_pur_copy_A5;

drop table s_pur_copy_A6;
CREATE table s_pur_copy_A6 AS
SELECT T1.고객번호 고객번호1,T2.고객번호 고객번호2,T1.총구매액14,T2.총구매액15
FROM s_pur_copy_A4 T1 
FULL OUTER JOIN s_pur_copy_A5 T2 ON (T1.고객번호=T2.고객번호);
select * from s_pur_copy_A6;


ALTER TABLE s_pur_copy_A6 DROP COLUMN 고객번호1;

-- 감소된 고객
select 고객번호2 from s_pur_copy_A6
WHERE 총구매액15 < 총구매액14;

select count(*) from s_pur_copy_A6
WHERE 총구매액15 < 총구매액14; -- 6237

drop table s_pur_copy_A7;
create table s_pur_copy_A7 as select 고객번호,sum(구매금액) 구매액14_1 from s_pur_copy_A1 where 소분류코드=1 
and 구매일자 between 20140101 and 20140630 group by 고객번호 order by 고객번호 ;
select * from s_pur_copy_A7;

drop table s_pur_copy_A8;
create table s_pur_copy_A8 as select 고객번호,sum(구매금액) 구매액14_2 from s_pur_copy_A1 where 소분류코드=1 
and 구매일자 between 20140701 and 20141231 group by 고객번호 order by 고객번호 ;
select * from s_pur_copy_A8;

drop table s_pur_copy_A9;
create table s_pur_copy_A9 as select 고객번호,sum(구매금액) 구매액15_1 from s_pur_copy_A1 where 소분류코드=1 
and 구매일자 between 20150101 and 20150630 group by 고객번호 order by 고객번호 ;
select * from s_pur_copy_A9;

drop table s_pur_copy_A10;
create table s_pur_copy_A10 as select 고객번호,sum(구매금액) 구매액15_2 from s_pur_copy_A1 where 소분류코드=1 
and 구매일자 between 20150701 and 20151231 group by 고객번호 order by 고객번호 ;
select * from s_pur_copy_A10;

drop table s_pur_copy_A11;
CREATE table s_pur_copy_A11 AS
SELECT T1.고객번호 고객번호,T2.고객번호 고객번호1,T1.구매액14_1,T2.구매액14_2
FROM s_pur_copy_A7 T1 
FULL OUTER JOIN s_pur_copy_A8 T2 ON (T1.고객번호=T2.고객번호);
select * from s_pur_copy_A11;

CREATE table s_pur_copy_A12 AS
SELECT T1.고객번호 고객번호,T2.고객번호 고객번호1,T1.구매액14_1,T1.구매액14_2,T2.구매액15_1
FROM s_pur_copy_A11 T1 
FULL OUTER JOIN s_pur_copy_A9 T2 ON (T1.고객번호=T2.고객번호);
select * from s_pur_copy_A12;

CREATE table s_pur_copy_A13 AS
SELECT T1.고객번호 고객번호,T2.고객번호 고객번호1,T1.구매액14_1,T1.구매액14_2,T2.구매액15_1
FROM s_pur_copy_A12 T1 
FULL OUTER JOIN s_pur_copy_ T2 ON (T1.고객번호=T2.고객번호);
select * from s_pur_copy_A12;




DROP VIEW SUM_12;
CREATE VIEW SUM_12 AS
SELECT T1.고객번호 고객번호1,T1.구매금액15년_1,T1.구매횟수15년_1, T2.구매금액15년_2 ,T2.구매횟수15년_2
FROM T_151 T1 
FULL OUTER JOIN T_152 T2 ON (T1.고객번호=T2.고객번호);

select sum(구매금액) from s_pur_copy_A3 where 소분류코드=1 and 구매일자 like '%2015%' group by 고객번호 order by 고객번호;

create table s_pur_copy_A3 as select * from s_pur_copy_A1 where 구매일자 like '%2015%';

-- 진짜 정확한 테이블, 시즈널리티 적
update purprod set 구매금액 = 구매금액/1.01용620302175834
where 구매일자 between 20140101 and 20140331; --3,217,669

update purprod set 구매금액 = 구매금액/0.970792475064181
where 구매일자 between 20140401 and 20140630; --3,491,713개

update purprod set 구매금액 = 구매금액/0.885105845713564
where 구매일자 between 20140701 and 20140930; --3,563,754

update purprod set 구매금액 = 구매금액/1.12760405706831
where 구매일자 between 20141001 and 20141231; -- 3,598,378

update purprod set 구매금액 = 구매금액/0.988770710623332
where 구매일자 between 20150101 and 20150331; --3,619,223

update purprod set 구매금액 = 구매금액/0.932539514386203
where 구매일자 between 20150401 and 20150630;  --3,854,875

update purprod set 구매금액 = 구매금액/0.88791897961778
where 구매일자 between 20150701 and 20150930;  --3,795,633

update purprod set 구매금액 = 구매금액/1.2103055214204
where 구매일자 between 20151001 and 20151231; --

-- 객단가 구하기
select * from purprod;
CREATE table month1 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20140101 and 20140331  group by 고객번호 order by 고객번호;

select * from month1;

select 고객번호 고객번호, 구매금액/방문수 객단가 from ;


CREATE table month2 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20140401 and 20140630  group by 고객번호 order by 고객번호;

CREATE table month3 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20140701 and 20140930  group by 고객번호 order by 고객번호;

CREATE table month4 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20141001 and 20141231  group by 고객번호 order by 고객번호;

CREATE table month5 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20150101 and 20150331  group by 고객번호 order by 고객번호;

CREATE table month6 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20150401 and 20150630  group by 고객번호 order by 고객번호;

CREATE table month7 AS
select 고객번호 고객번호, sum(구매금액) 구매금액, count(영수증번호) 방문수 from purprod where 구매일자 between 20150701 and 20150930  group by 고객번호 order by 고객번호;

DROP table month8;
CREATE table month8 AS
SELECT T1.고객번호 고객번호1,T1.구매금액 구매금액, T1.방문수 방문수,T2.고객번호 고객번호2, T2.구매금액 구매금액2, T2.방문수 방문수2
FROM month1 T1 
FULL OUTER JOIN month2 T2 ON (T1.고객번호=T2.고객번호);

select * from month8;


select * from s_pur_copy_A1;
--14년1분기 구매횟수
select count(고객번호) from s_pur_copy_A1 where 구매일자 between 20140101 and 20140331; -- 641940
--15년4분기 구매횟수
select count(고객번호) from s_pur_copy_A1 where 구매일자 between 20151001 and 20151231; -- 722061
--14년1분기 총구매액
select sum(구매금액) from s_pur_copy_A1 where 구매일자 between 20140101 and 20140331; -- 56,183,866,877
--15년4분기 총구매액
select sum(구매금액) from s_pur_copy_A1 where 구매일자 between 20151001 and 20151231; -- 65,351,176,961
--14년1분기 고객별 구매횟수
select 고객번호,count(영수증번호) 구매횟수 from s_pur_copy_A1 where 구매일자 between 20140101 and 20140331 group by 고객번호 order by 고객번호;
--14년1분기를 이용한 고객수 13856

--15년4분기 고객별 구매횟수
select 고객번호,count(영수증번호) 구매횟수 from s_pur_copy_A1 where 구매일자 between 20151001 and 20151231 group by 고객번호 order by 고객번호;
--15년4분기를 이용한 고객수 14881

--
select count(*) from s_pur_copy_A1 where 구매일자 between 20140101 and 20140331;

select * from cust;
select 고객번호, 거주지역 from cust group by 고객번호,거주지역 order by 고객번호;


select * from s_pur_copy;
select 고객번호, sum(구매금액) 구매금액 from s_pur_copy group by 고객번호 order by 고객번호;
-- 고객번호,총매출 테이블
drop view area;
create table area as select 고객번호, sum(구매금액) 구매금액 from s_pur_copy group by 고객번호 order by 고객번호;
select * from area;
-- 고객번호,거주지역 테이블
drop view area2;
DROP table area2;
create table area2 as select 고객번호, 거주지역 from cust group by 고객번호,거주지역 order by 고객번호;
select * from area2;
-- 총매출,거주지 합친 테이블
DROP table region;
CREATE table region AS
SELECT T1.고객번호 고객번호1,T1.구매금액,T2.고객번호 고객번호2, T2.거주지역
FROM area T1 
FULL OUTER JOIN area2 T2 ON (T1.고객번호=T2.고객번호);
select * from region;
-- 고객번호 칼럼 한개 삭제
ALTER table region DROP COLUMN 고객번호2;
-- 개수확인
select count(*) from region;

select * from region;
-- 거주지역별 총매출
select 거주지역,sum(구매금액) from region group by 거주지역 order by 거주지역; 
-- 거주지역 총매출 테이블 만들기
create table region_sales as select 거주지역,sum(구매금액) 총매출 from region group by 거주지역 order by 거주지역; 
select * from region_sales;

-- 거주지역별 사용횟수
select 거주지역,count(고객번호1) 사용횟수 from region group by 거주지역 order by 거주지역; 
-- 거주지역별 사용횟수 테이블 만들기
create table region_count as select 거주지역,count(고객번호1) 사용횟수 from region group by 거주지역 order by 거주지역;  
select * from region_count;

-- 지역별 사용횟수와 총매출 합친 테이블
DROP table region_sum;
CREATE table region_sum AS
SELECT T1.거주지역 지역번호,T1.총매출,T2.거주지역 지역번호2, T2.사용횟수
FROM region_sales T1 
FULL OUTER JOIN region_count T2 ON (T1.거주지역=T2.거주지역);
select * from region_sum;
-- 고객번호 칼럼 한개 삭제
ALTER table region_sum DROP COLUMN 지역번호;

select trunc(avg(총매출)) from region_sum group by 지역번호 order by 지역번호;