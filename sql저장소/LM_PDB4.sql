select sum(구매금액) from tb ;
select * from tb;
select * from ex11 where 제휴사 = 'A';

-- A제휴사
-- 편의품 1
update ex1 set 소분류코드 = 1 
where 제휴사 = 'A' and 소분류코드 between 'A010101' and 'A010624'
or 제휴사 = 'A' and 소분류코드 between 'A010656'  and 'A011004'
or 제휴사 = 'A' and 소분류코드 between 'A090101'  and 'A090105'
or 제휴사 = 'A' and 소분류코드 = 'A030110'
or 제휴사 = 'A' and 소분류코드 between 'A090107'  and 'A090310'
or 제휴사 = 'A' and 소분류코드 = 'A030112';

-- 선매품 2
update ex1 set 소분류코드 = 2 
where 제휴사 = 'A' and 소분류코드 between 'A020101'  and 'A020603'
or 제휴사 = 'A' and 소분류코드 between 'A020607'  and 'A030109'
or 제휴사 = 'A' and 소분류코드 = 'A030111'
or 제휴사 = 'A' and 소분류코드 between 'A040201'  and 'A070304'
or 제휴사 = 'A' and 소분류코드 between 'A070501'  and 'A070608'
or 제휴사 = 'A' and 소분류코드 between 'A090311'  and 'A090610'
or 제휴사 = 'A' and 소분류코드 = 'A030113';

-- 전문품 3
update ex1 set 소분류코드 = 3
where 제휴사 = 'A' and 소분류코드 between 'A070401'  and 'A070403'
or 제휴사 = 'A' and 소분류코드 between 'A080101'  and 'A080125'
or 제휴사 = 'A' and 소분류코드 = 'A090701' ;

-- 기타 4
update ex1 set 소분류코드 = 4
where 제휴사 = 'A' and 소분류코드 between 'A010625'  and 'A010655'
or 제휴사 = 'A' and 소분류코드 between 'A011101'  and 'A011109'
or 제휴사 = 'A' and 소분류코드 = 'A030114'
or 제휴사 = 'A' and 소분류코드 between 'A020604'  and 'A020606'
or 제휴사 = 'A' and 소분류코드 = 'A011101'
or 제휴사 = 'A' and 소분류코드 = 'A090106';

create table ex2 as select * from ex1 where 제휴사='A';
select * from ex2;

select sum(구매금액) from ex2 where 구매일자 like '%2014%' group by 고객번호 order by 고객번호;
SELECT 고객번호,소분류코드,count(구매일자) 구매횟수 ,sum(구매금액) 총구매액 FROM ex2 WHERE 구매일자 LIKE '%2014%' group by 소분류코드,고객번호 order by 소분류코드;

SELECT 고객번호,소분류코드,count(구매일자) 구매횟수 ,sum(구매금액) 총구매액 FROM ex2 WHERE 구매일자 LIKE '%2015%' group by 소분류코드,고객번호 order by 소분류코드;


create table ex3 as select * from ex2 WHERE 구매일자 LIKE '%2014%';
select * from ex3;

select sum(구매금액) from ex3 group by 고객번호;