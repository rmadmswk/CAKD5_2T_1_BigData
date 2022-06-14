select * from product3;
select * from product3 where 제휴사 ='B';
select count(*) from product3 where 제휴사 ='B'; --2624
-- 테이블 복사
-- create table 신규테이블명 as select * from 복사할테이블명;
create table pro2 as select * from product3;

-- 복사한 pro1 테이블이 기존 product3 테이블과 같은지 확인
select * from pro2 where 제휴사 = 'B';
select count(*) from pro2 where 제휴사 ='B'; -- 2624

-- 의
update pro2 set 대분류코드 = 101  
where 제휴사 = 'B' and 대분류코드 between 29 and 36
or 제휴사 = 'B' and 대분류코드 between 44 and 45
or 제휴사 = 'B' and 대분류코드 between 49 and 51
or 제휴사 = 'B' and 대분류코드 = 66
or 제휴사 = 'B' and 대분류코드 between 68 and 71
or 제휴사 = 'B' and 대분류코드 = 90; -- 521
-- 식
update pro2 set 대분류코드 = 102 
where 제휴사 = 'B' and 대분류코드 between 1 and 7
or 제휴사 = 'B' and 대분류코드 between 9 and 16
or 제휴사 = 'B' and 대분류코드 = 43
or 제휴사 = 'B' and 대분류코드 between 46 and 48
or 제휴사 = 'B' and 대분류코드 between 37 and 38
or 제휴사 = 'B' and 대분류코드 between 52 and 65
or 제휴사 = 'B' and 대분류코드 = 67
or 제휴사 = 'B' and 대분류코드 between 72 and 83
or 제휴사 = 'B' and 대분류코드 = 89
or 제휴사 = 'B' and 대분류코드 between 91 and 92; -- 1353
-- 주
update pro2 set 대분류코드 = 103
where 제휴사 = 'B' and 대분류코드 = 8
or 제휴사 = 'B' and 대분류코드 between 17 and 28
or 제휴사 = 'B' and 대분류코드 between 39 and 42
or 제휴사 = 'B' and 대분류코드 between 84 and 88; -- 750
-- 101.102.103 으로 바꼈는지 확인
select * from pro2 where 제휴사 = 'B';

-- 101,102,103을 보기 쉽게 의식주(1,2,3)순으로 한번더 업데이트
update pro2 set 대분류코드 = 1
where 제휴사 = 'B' and 대분류코드 = 101;

update pro2 set 대분류코드 = 2
where 제휴사 = 'B' and 대분류코드 = 102;

update pro2 set 대분류코드 = 3
where 제휴사 = 'B' and 대분류코드 = 103;
-- 1.2.3 으로 바꼈는지 한번더 확인
select * from pro2 where 제휴사 = 'B';
select * from pro2 where 제휴사 = 'B' and 대분류코드 = 1;

select * from pro2 where 제휴사 = 'B' and 중분류명 = '푸드코트' or  제휴사 = 'B' and 중분류명 = '성인침구류' or 제휴사 = 'B' and 중분류명 = '수족관용품';

alter table pro2 drop column 중분류코드;
alter table pro2 drop column 소분류코드;


-- 구매상품TR 용량 제일큰거
select * from tb; -- 각자 임포트한 테이블명
select * from tb where 제휴사 ='B';
select count(*) from tb where 제휴사 ='B'; -- 13338074

-- 테이블 복사
-- create table 신규테이블명 as select * from 복사할테이블명;
create table tb1 as select * from tb;

-- 복사한 tb1 테이블이 기존 tb 테이블과 같은지 확인
select * from tb1 where 제휴사 = 'B';
select count(*) from tb1 where 제휴사 ='B'; -- 13338074

-- 의
update tb1 set 대분류코드 = 101  
where 제휴사 = 'B' and 대분류코드 between 29 and 36
or 제휴사 = 'B' and 대분류코드 between 44 and 45
or 제휴사 = 'B' and 대분류코드 between 49 and 51
or 제휴사 = 'B' and 대분류코드 = 66
or 제휴사 = 'B' and 대분류코드 between 68 and 71
or 제휴사 = 'B' and 대분류코드 = 90; -- 762,010
-- 식
update tb1 set 대분류코드 = 102 
where 제휴사 = 'B' and 대분류코드 between 1 and 7
or 제휴사 = 'B' and 대분류코드 between 9 and 16
or 제휴사 = 'B' and 대분류코드 = 43
or 제휴사 = 'B' and 대분류코드 between 46 and 48
or 제휴사 = 'B' and 대분류코드 between 37 and 38
or 제휴사 = 'B' and 대분류코드 between 52 and 65
or 제휴사 = 'B' and 대분류코드 = 67
or 제휴사 = 'B' and 대분류코드 between 72 and 83
or 제휴사 = 'B' and 대분류코드 = 89
or 제휴사 = 'B' and 대분류코드 between 91 and 92; -- 10,533,292
-- 주
update tb1 set 대분류코드 = 103
where 제휴사 = 'B' and 대분류코드 = 8
or 제휴사 = 'B' and 대분류코드 between 17 and 28
or 제휴사 = 'B' and 대분류코드 between 39 and 42
or 제휴사 = 'B' and 대분류코드 between 84 and 88; -- 2,042,772
-- 101.102.103 으로 바꼈는지 확인
select * from tb1 where 제휴사 = 'B';

-- 101,102,103을 보기 쉽게 의식주(1,2,3)순으로 한번더 업데이트
update tb1 set 대분류코드 = 1
where 제휴사 = 'B' and 대분류코드 = 101;

update tb1 set 대분류코드 = 2
where 제휴사 = 'B' and 대분류코드 = 102;

update tb1 set 대분류코드 = 3
where 제휴사 = 'B' and 대분류코드 = 103;
-- 1.2.3 으로 바꼈는지 한번더 확인
select * from tb1 where 제휴사 = 'B';
select * from tb1 where 제휴사 = 'B' and 대분류코드 = 1;

alter table tb1 drop column 중분류코드;
alter table tb1 drop column 소분류코드;

select * from tb1;
select * from cp;
select * from pro2;

select * from tb1 where 고객번호 = 17406 and 제휴사 = 'B' ;
select sum(구매금액) from tb1 where 고객번호 = 17406 and 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2014%'; -- 1338760
select sum(구매금액) from tb1 where 고객번호 = 17406 and 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2015%'; -- 1523250

select * from tb1 where 고객번호 = 18874 and 제휴사 = 'B' ;
select sum(구매금액) from tb1 where 고객번호 = 18874 and 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2014%'; -- 367000
select sum(구매금액) from tb1 where 고객번호 = 18874 and 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2015%'; -- 105580

select 고객번호
from tb1
where sum(구매금액) > sum(구매금액) and 제휴사 ='B' and 대분류코드 = 1;


-- 제휴사 B의 '의류' 부분의 14,15년도 총 구매 금액 
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2014%';  -- 10,136,864,476
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%2015%';  -- 10,181,739,329

select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%2014%';  -- 34,951,328,105
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%2015%';  -- 34,020,421,596

select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%2014%';  -- 11,282,742,510
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%2015%';  -- 10,648,590,462

-- 의
--SELECT NAME, SUM(SALEPRICE)
--FROM CUSTOMER,ORDERS
--WHERE CUSTOMER.CUSTID = ORDERS.CUSTID
--GROUP BY CUSTOMER.NAME
--ORDER BY CUSTOMER.NAME;
select 고객번호 as 십사년,sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201401%' or -- 791554948
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201402%' or -- 688464850
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201403%' or -- 857668785
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201404%' or -- 784402343
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201405%' or  -- 940038820
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201407%' or -- 797307036
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201408%' or -- 678729230
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201409%' or -- 841073464
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201410%' or -- 959974510
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201411%' or -- 964437520
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201412%'
group by 고객번호
order by 고객번호;


select 고객번호,sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201501%' or -- 791554948
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201502%' or -- 688464850
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201503%' or -- 857668785
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201504%' or -- 784402343
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201505%' or  -- 940038820
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201507%' or -- 797307036
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201508%' or -- 678729230
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201509%' or -- 841073464
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201510%' or -- 959974510
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201511%' or -- 964437520
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201512%'
group by 고객번호
order by 고객번호;

select 구매일자,sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201501%' or -- 791554948
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201502%' or -- 688464850
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201503%' or -- 857668785
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201504%' or -- 784402343
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201505%' or  -- 940038820
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201507%' or -- 797307036
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201508%' or -- 678729230
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201509%' or -- 841073464
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201510%' or -- 959974510
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201511%' or -- 964437520
제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201512%'
group by 구매일자
order by 구매일자;


select 구매일자,sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201501%'
group by 구매일자
order by 구매일자;

select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201501%'; -- 832005700
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201502%'; -- 804681730
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201503%'; -- 881340712
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201504%'; -- 871555105
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201505%'; -- 988472550
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201506%'; -- 808150180
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201507%'; -- 854337850
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201508%'; -- 691116932
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201509%'; -- 899911540
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201510%'; -- 762086110
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201511%'; -- 942652140
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 1 and 구매일자 like '%201512%'; -- 845429140

-- 식
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201401%'; -- 3209266632
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201402%'; -- 2455823121
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201403%'; -- 2978702965
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201404%'; -- 2951374729
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201405%'; -- 2886884109
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201406%'; -- 3164031784
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201407%'; -- 2999099510
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201408%'; -- 3309605411
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201409%'; -- 2815475637
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201410%'; -- 2840414277
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201411%'; -- 2603511068
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201412%'; -- 2737138862

select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201501%'; -- 2884676358
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201502%'; -- 3012112584
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201503%'; -- 2978702965
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201504%'; -- 2951374729
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201505%'; -- 2886884109
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201506%'; -- 3164031784
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201507%'; -- 2999099510
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201508%'; -- 3309605411
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201509%'; -- 2815475637
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201510%'; -- 2840414277
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201511%'; -- 2603511068
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 2 and 구매일자 like '%201512%'; -- 2737138862

-- 주
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201401%'; -- 791554948
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201402%'; -- 688464850
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201403%'; -- 857668785
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201404%'; -- 784402343
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201405%'; -- 940038820
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201406%'; -- 802145110
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201407%'; -- 797307036
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201408%'; -- 678729230
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201409%'; -- 841073464
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201410%'; -- 959974510
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201411%'; -- 964437520
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201412%';

select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201401%'; -- 791554948
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201402%'; -- 688464850
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201403%'; -- 857668785
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201404%'; -- 784402343
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201405%'; -- 940038820
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201406%'; -- 802145110
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201407%'; -- 797307036
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201408%'; -- 678729230
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201409%'; -- 841073464
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201410%'; -- 959974510
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201411%'; -- 964437520
select sum(구매금액) from tb1 where 제휴사 ='B' and 대분류코드 = 3 and 구매일자 like '%201412%';