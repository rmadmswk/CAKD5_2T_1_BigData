select * from real;
select * from purprod;

select * from purprod where ���޻� ='C';
select * from real;
-- ���޻� A
-- ��
update purprod set ��з��ڵ� = 101
where ���޻� = 'A' and ��з��ڵ� between 2 and 6
or ���޻� = 'A' and ��з��ڵ� = 8; -- 1,929,267

-- ��
update purprod set ��з��ڵ� = 102
where ���޻� = 'A' and ��з��ڵ� =1; -- 3,522,159

-- ��
update purprod set ��з��ڵ� = 103
where ���޻� = 'A' and ��з��ڵ� = 7
or ���޻� = 'A' and ��з��ڵ� = 9;  -- 318,892

-- �ڵ� 1,2,3 ���� ����
update purprod set ��з��ڵ� = 1
where ���޻� = 'A' and ��з��ڵ� = 101;

update purprod set ��з��ڵ� = 2
where ���޻� = 'A' and ��з��ڵ� = 102;

update purprod set ��з��ڵ� = 3
where ���޻� = 'A' and ��з��ڵ�= 103;

-- ���޻� C
-- ���޻� C
-- ��
update purprod set ��з��ڵ� = 102
where ���޻� = 'C' and ��з��ڵ� between 1 and 15; 
--  8,354,801

-- ��
update purprod set ��з��ڵ� = 103
where ���޻� = 'C' and ��з��ڵ� between 16 and 17; -- 1,024,435

-- �ڵ� 2,3 ���� ����
update purprod set ��з��ڵ� = 2
where ���޻� = 'C' and ��з��ڵ� = 102;

update purprod set ��з��ڵ� = 3
where ���޻� = 'C' and ��з��ڵ� = 103;

-- ���޻� D
-- ��
update purprod set ��з��ڵ� = 102
where ���޻� = 'D' and ��з��ڵ� = 4 ; --45,637

-- ��
update purprod set ��з��ڵ� = 103
where ���޻� = 'D' and ��з��ڵ� between 5 and 8
or ���޻� = 'D' and ��з��ڵ� between 1 and 3;  -- 59,765

-- �ڵ� 2,3 ���� ����
update purprod set ��з��ڵ� = 2
where ���޻� = 'D' and ��з��ڵ� = 102;

update purprod set ��з��ڵ� = 3
where ���޻� = 'D' and ��з��ڵ� = 103;

select * from channel;
select * from cust order by ����ȣ;
select * from member;
select * from real;
select * from purprod;

select count(����ȣ) as ���� from cust;
select ���ɴ� from cust group by ���ɴ�;
-- 19383

select count(����ȣ) as ���� from cust where ���ɴ� = '10��';

select sum(���űݾ�) from purprod where ����ȣ = 00501;
--55��~59��
--50��~54��
--45��~49��
--40��~44��
--35��~

-- �ѹ��̶� ���������� �ִ� ������ ���ɴ�
select (select count(c11.����ȣ) from cust c11 where ���ɴ� = '60���̻�') as age_60,
(select count(c1.����ȣ) from cust c1 where ���ɴ� = '55��~59��') as age_50_1,
(select count(c2.����ȣ) from cust c2 where ���ɴ� = '50��~54��') as age_50_2,
(select count(c3.����ȣ) from cust c3 where ���ɴ� = '45��~49��') as age_40_1,
(select count(c4.����ȣ) from cust c4 where ���ɴ� = '40��~44��') as age_40_2,
(select count(c5.����ȣ) from cust c5 where ���ɴ� = '35��~39��') as age_30_1,
(select count(c6.����ȣ) from cust c6 where ���ɴ� = '30��~34��') as age_30_2,
(select count(c7.����ȣ) from cust c7 where ���ɴ� = '25��~29��') as age_20_1,
(select count(c8.����ȣ) from cust c8 where ���ɴ� = '20��~24��') as age_20_1,
(select count(c9.����ȣ) from cust c9 where ���ɴ� = '19������') as age_10
from dual;

select * from channel;
select ���޻� from channel group by ���޻�;
-- ���޻� ���Ƚ��
select sum(�̿�Ƚ��) from channel where ���޻� = 'B_MOBILE/APP'; -- 93067

select (select sum(c1.�̿�Ƚ��) from channel c1)  as channel,
(select sum(c2.�̿�Ƚ��) from channel c2 where ���޻� = 'B_MOBILE/APP') as channel_B_mobile,
(select sum(c3.�̿�Ƚ��) from channel c3 where ���޻� = 'B_ONLINEMALL') as channel_B_online,
(select sum(c4.�̿�Ƚ��) from channel c4 where ���޻� = 'A_MOBILE/APP') as channel_A_mobile,
(select sum(c5.�̿�Ƚ��) from channel c5 where ���޻� = 'C_MOBILE/APP') as channel_C_mobile,
(select sum(c6.�̿�Ƚ��) from channel c6 where ���޻� = 'C_ONLINEMALL') as channel_C_online,
(select sum(c7.�̿�Ƚ��) from channel c7 where ���޻� = 'D_MOBILE/APP') as channel_D_mobile
from dual;



select (select sum(p1.���űݾ�) from purprod p1)  as amt,
(select sum(p2.���űݾ�) from purprod p2 where p2.�������� <20150101) as amt_2014,
(select sum(p3.���űݾ�) from purprod p3 where p3.�������� >20141231) as amt_2015
from dual;

select * from purprod where ���޻� ='A' and �������� like '%2016%';
-- 14��,15�⵵ A ���޻� ���űݾ�
select (select sum(p1.���űݾ�) from purprod p1 where ���޻� = 'A')  as amt,
(select sum(p2.���űݾ�) from purprod p2 where ���޻� = 'A' and p2.�������� <20150101) as amt_2014,
(select sum(p3.���űݾ�) from purprod p3 where ���޻� = 'A' and p3.�������� >20141231) as amt_2015
from dual;

-- 14��,15�⵵ B ���޻� ���űݾ�
select (select sum(p1.���űݾ�) from purprod p1 where ���޻� = 'B')  as amt,
(select sum(p2.���űݾ�) from purprod p2 where ���޻� = 'B' and p2.�������� <20150101) as amt_2014,
(select sum(p3.���űݾ�) from purprod p3 where ���޻� = 'B' and p3.�������� >20141231) as amt_2015
from dual;

-- 14��,15�⵵ C ���޻� ���űݾ�
select (select sum(p1.���űݾ�) from purprod p1 where ���޻� = 'C')  as amt,
(select sum(p2.���űݾ�) from purprod p2 where ���޻� = 'C' and p2.�������� <20150101) as amt_2014,
(select sum(p3.���űݾ�) from purprod p3 where ���޻� = 'C' and p3.�������� >20141231) as amt_2015
from dual;

-- 14��,15�⵵ D ���޻� ���űݾ�
select (select sum(p1.���űݾ�) from purprod p1 where ���޻� = 'D')  as amt,
(select sum(p2.���űݾ�) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101) as amt_2014,
(select sum(p3.���űݾ�) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231) as amt_2015
from dual;

-- ���޻� B�� ����� ����
select count(����ȣ) from purprod where ���޻� ='B' and �������� <20150101;  

-- ���޻� A�� ����� ����
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'A')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'A' and p2.�������� <20150101) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'A' and p3.�������� >20141231) as amt_2015
from dual;

-- ���޻� B�� ����� ����
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'B')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'B' and p2.�������� <20150101) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'B' and p3.�������� >20141231) as amt_2015
from dual;

-- ���޻� C�� ����� ����
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'C')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'C' and p2.�������� <20150101) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'C' and p3.�������� >20141231) as amt_2015
from dual;

-- ���޻� D�� ����� ����
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231) as amt_2015
from dual;

select count(����ȣ) from purprod ;


CREATE TABLE CUSPUR
AS SELECT ����ȣ, SUM(���űݾ�) ���űݾ�
FROM PURPROD
GROUP BY ����ȣ
ORDER BY ����ȣ;
SELECT * FROM CUSPUR;

create table a
as select ����ȣ ,���Žð� ,���޻�
from purprod
where ���޻� = 'A' 
group by ����ȣ
order by ����ȣ;

-- ���޻� D�� 23~2�ñ��� ����� �� ��ȣ
select ����ȣ,���Žð� from purprod where ���޻� = 'D' and �������� <20150101 and ���Žð� in(23,24,1,2);

-- ���޻� D�� 23~2�ñ��� ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(23,24,1,2)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(23,24,1,2)) as amt_2015
from dual;

-- ���޻� D�� 23~2�ñ��� ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(3,4,5,6,7,8)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(3,4,5,6,7,8)) as amt_2015
from dual;

-- ���޻� D�� 23,24,1,2 ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(23,24,1,2)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(23,24,1,2)) as amt_2015
from dual;

-- ���޻� D�� 23~2�ñ��� ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(23,24,1,2)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(23,24,1,2)) as amt_2015
from dual;

-- ���޻� D�� 23~2�ñ��� ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(23,24,1,2)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(23,24,1,2)) as amt_2015
from dual;

-- ���޻� D�� 23~2�ñ��� ����� �� ��
select (select count(p1.����ȣ) from purprod p1 where ���޻� = 'D')  as amt,
(select count(p2.����ȣ) from purprod p2 where ���޻� = 'D' and p2.�������� <20150101 and ���Žð� in(23,24,1,2)) as amt_2014,
(select count(p3.����ȣ) from purprod p3 where ���޻� = 'D' and p3.�������� >20141231 and ���Žð� in(23,24,1,2)) as amt_2015
from dual;

select ����ȣ;


select * from product1 where ���޻� = 'B';

