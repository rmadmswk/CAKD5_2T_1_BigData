select * from cust;
select * from purprod;

select 고객번호,sum(구매금액) as 십사년도 from purprod where 구매일자 like '%2014%' group by 고객번호 order by 고객번호;

select * from channel;
select * from cust;
select * from cp;
select * from channel;
select * from pro1 where 제휴사 = 'A' and 대분류코드 in(7,8,9);
A는 대형가전 명품,식기 등등의 주거와 관련된 상품들 위주가 주력상품

select * from pro1 where 제휴사 = 'C' and 대분류코드 = 13;
C는 통조림,커피,담배 등의 기호식품으로 식과 관련된 상품이 주력상품
select * from pro1 where 제휴사 = 'C' and 대분류코드 = 11 ; 음료
select * from pro1 where 제휴사 = 'C' and 대분류코드 = 17;; 식기

select * from pro1 where 제휴사 = 'D'; 화장품



update ex1 set 소분류코드 = 2 
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