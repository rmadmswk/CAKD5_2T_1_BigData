select * from real;
select * from five;
select count(*) from tb;
select count(*) from purprod;
select count(*) from ex2 where 중분류코드 = 101 and 제휴사 = 'A'; -- 183796
select count(*) from ex2 where 중분류코드 = 102 and 제휴사 = 'A'; -- 200679
select count(*) from ex2 where 중분류코드 = 103 and 제휴사 = 'A'; -- 254240
select 중분류명,count(*) from real where 제휴사 ='A' group by 중분류명 order by 중분류명;
select 중분류명,count(*) from real where 제휴사 ='B' group by 중분류명 order by 중분류명;
select 중분류명,count(*) from real where 제휴사 ='C' group by 중분류명 order by 중분류명;
select 중분류명,count(*) from real where 제휴사 ='D' group by 중분류명 order by 중분류명;

select * from cust where 고객번호=1;

select * from code;
select * from purprod;