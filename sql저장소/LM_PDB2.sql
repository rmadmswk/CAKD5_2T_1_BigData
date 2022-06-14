select * from real;
select * from purprod;

select * from purprod where 제휴사 ='C';
select * from real;
-- 제휴사 A
-- 의
update purprod set 대분류코드 = 101
where 제휴사 = 'A' and 대분류코드 between 2 and 6
or 제휴사 = 'A' and 대분류코드 = 8; -- 1,929,267

-- 식
update purprod set 대분류코드 = 102
where 제휴사 = 'A' and 대분류코드 =1; -- 3,522,159

-- 주
update purprod set 대분류코드 = 103
where 제휴사 = 'A' and 대분류코드 = 7
or 제휴사 = 'A' and 대분류코드 = 9;  -- 318,892

-- 코드 1,2,3 으로 수정
update purprod set 대분류코드 = 1
where 제휴사 = 'A' and 대분류코드 = 101;

update purprod set 대분류코드 = 2
where 제휴사 = 'A' and 대분류코드 = 102;

update purprod set 대분류코드 = 3
where 제휴사 = 'A' and 대분류코드= 103;

-- 제휴사 C
-- 제휴사 C
-- 식
update purprod set 대분류코드 = 102
where 제휴사 = 'C' and 대분류코드 between 1 and 15; 
--  8,354,801

-- 주
update purprod set 대분류코드 = 103
where 제휴사 = 'C' and 대분류코드 between 16 and 17; -- 1,024,435

-- 코드 2,3 으로 수정
update purprod set 대분류코드 = 2
where 제휴사 = 'C' and 대분류코드 = 102;

update purprod set 대분류코드 = 3
where 제휴사 = 'C' and 대분류코드 = 103;

-- 제휴사 D
-- 식
update purprod set 대분류코드 = 102
where 제휴사 = 'D' and 대분류코드 = 4 ; --45,637

-- 주
update purprod set 대분류코드 = 103
where 제휴사 = 'D' and 대분류코드 between 5 and 8
or 제휴사 = 'D' and 대분류코드 between 1 and 3;  -- 59,765

-- 코드 2,3 으로 수정
update purprod set 대분류코드 = 2
where 제휴사 = 'D' and 대분류코드 = 102;

update purprod set 대분류코드 = 3
where 제휴사 = 'D' and 대분류코드 = 103;

select * from channel;
select * from cust order by 고객번호;
select * from member;
select * from real;
select * from purprod;

select count(고객번호) as 고객수 from cust;
select 연령대 from cust group by 연령대;
-- 19383

select count(고객번호) as 고객수 from cust where 연령대 = '10세';

select sum(구매금액) from purprod where 고객번호 = 00501;
--55세~59세
--50세~54세
--45세~49세
--40세~44세
--35세~

-- 한번이라도 구매한적이 있는 고객들의 연령대
select (select count(c11.고객번호) from cust c11 where 연령대 = '60세이상') as age_60,
(select count(c1.고객번호) from cust c1 where 연령대 = '55세~59세') as age_50_1,
(select count(c2.고객번호) from cust c2 where 연령대 = '50세~54세') as age_50_2,
(select count(c3.고객번호) from cust c3 where 연령대 = '45세~49세') as age_40_1,
(select count(c4.고객번호) from cust c4 where 연령대 = '40세~44세') as age_40_2,
(select count(c5.고객번호) from cust c5 where 연령대 = '35세~39세') as age_30_1,
(select count(c6.고객번호) from cust c6 where 연령대 = '30세~34세') as age_30_2,
(select count(c7.고객번호) from cust c7 where 연령대 = '25세~29세') as age_20_1,
(select count(c8.고객번호) from cust c8 where 연령대 = '20세~24세') as age_20_1,
(select count(c9.고객번호) from cust c9 where 연령대 = '19세이하') as age_10
from dual;

select * from channel;
select 제휴사 from channel group by 제휴사;
-- 제휴사 사용횟수
select sum(이용횟수) from channel where 제휴사 = 'B_MOBILE/APP'; -- 93067

select (select sum(c1.이용횟수) from channel c1)  as channel,
(select sum(c2.이용횟수) from channel c2 where 제휴사 = 'B_MOBILE/APP') as channel_B_mobile,
(select sum(c3.이용횟수) from channel c3 where 제휴사 = 'B_ONLINEMALL') as channel_B_online,
(select sum(c4.이용횟수) from channel c4 where 제휴사 = 'A_MOBILE/APP') as channel_A_mobile,
(select sum(c5.이용횟수) from channel c5 where 제휴사 = 'C_MOBILE/APP') as channel_C_mobile,
(select sum(c6.이용횟수) from channel c6 where 제휴사 = 'C_ONLINEMALL') as channel_C_online,
(select sum(c7.이용횟수) from channel c7 where 제휴사 = 'D_MOBILE/APP') as channel_D_mobile
from dual;



select (select sum(p1.구매금액) from purprod p1)  as amt,
(select sum(p2.구매금액) from purprod p2 where p2.구매일자 <20150101) as amt_2014,
(select sum(p3.구매금액) from purprod p3 where p3.구매일자 >20141231) as amt_2015
from dual;

select * from purprod where 제휴사 ='A' and 구매일자 like '%2016%';
-- 14년,15년도 A 제휴사 구매금액
select (select sum(p1.구매금액) from purprod p1 where 제휴사 = 'A')  as amt,
(select sum(p2.구매금액) from purprod p2 where 제휴사 = 'A' and p2.구매일자 <20150101) as amt_2014,
(select sum(p3.구매금액) from purprod p3 where 제휴사 = 'A' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 14년,15년도 B 제휴사 구매금액
select (select sum(p1.구매금액) from purprod p1 where 제휴사 = 'B')  as amt,
(select sum(p2.구매금액) from purprod p2 where 제휴사 = 'B' and p2.구매일자 <20150101) as amt_2014,
(select sum(p3.구매금액) from purprod p3 where 제휴사 = 'B' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 14년,15년도 C 제휴사 구매금액
select (select sum(p1.구매금액) from purprod p1 where 제휴사 = 'C')  as amt,
(select sum(p2.구매금액) from purprod p2 where 제휴사 = 'C' and p2.구매일자 <20150101) as amt_2014,
(select sum(p3.구매금액) from purprod p3 where 제휴사 = 'C' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 14년,15년도 D 제휴사 구매금액
select (select sum(p1.구매금액) from purprod p1 where 제휴사 = 'D')  as amt,
(select sum(p2.구매금액) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101) as amt_2014,
(select sum(p3.구매금액) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 제휴사 B를 사용한 고객수
select count(고객번호) from purprod where 제휴사 ='B' and 구매일자 <20150101;  

-- 제휴사 A를 사용한 고객수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'A')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'A' and p2.구매일자 <20150101) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'A' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 제휴사 B를 사용한 고객수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'B')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'B' and p2.구매일자 <20150101) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'B' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 제휴사 C를 사용한 고객수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'C')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'C' and p2.구매일자 <20150101) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'C' and p3.구매일자 >20141231) as amt_2015
from dual;

-- 제휴사 D를 사용한 고객수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231) as amt_2015
from dual;

select count(고객번호) from purprod ;


CREATE TABLE CUSPUR
AS SELECT 고객번호, SUM(구매금액) 구매금액
FROM PURPROD
GROUP BY 고객번호
ORDER BY 고객번호;
SELECT * FROM CUSPUR;

create table a
as select 고객번호 ,구매시간 ,제휴사
from purprod
where 제휴사 = 'A' 
group by 고객번호
order by 고객번호;

-- 제휴사 D를 23~2시까지 사용한 고객 번호
select 고객번호,구매시간 from purprod where 제휴사 = 'D' and 구매일자 <20150101 and 구매시간 in(23,24,1,2);

-- 제휴사 D를 23~2시까지 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(23,24,1,2)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(23,24,1,2)) as amt_2015
from dual;

-- 제휴사 D를 23~2시까지 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(3,4,5,6,7,8)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(3,4,5,6,7,8)) as amt_2015
from dual;

-- 제휴사 D를 23,24,1,2 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(23,24,1,2)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(23,24,1,2)) as amt_2015
from dual;

-- 제휴사 D를 23~2시까지 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(23,24,1,2)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(23,24,1,2)) as amt_2015
from dual;

-- 제휴사 D를 23~2시까지 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(23,24,1,2)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(23,24,1,2)) as amt_2015
from dual;

-- 제휴사 D를 23~2시까지 사용한 고객 수
select (select count(p1.고객번호) from purprod p1 where 제휴사 = 'D')  as amt,
(select count(p2.고객번호) from purprod p2 where 제휴사 = 'D' and p2.구매일자 <20150101 and 구매시간 in(23,24,1,2)) as amt_2014,
(select count(p3.고객번호) from purprod p3 where 제휴사 = 'D' and p3.구매일자 >20141231 and 구매시간 in(23,24,1,2)) as amt_2015
from dual;

select 고객번호;


select * from product1 where 제휴사 = 'B';

