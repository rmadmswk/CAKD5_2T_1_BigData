select * from ace;

select * from real_A2;

select ����ȣ, count(*) 

create table z as 
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ� from ace where ���޻�='A' and �������� between 20140101 and 20150630  group by ����ȣ order by ����ȣ;
drop table z;
select * from real_A2;  
select ratio_to_report(sum(A���ܰ�) over () as percent from real_A2 group by ����ȣ order by ����ȣ;


create table RF as
select ����ȣ ����ȣ, count(��������) ���ź�, max(��������) �ֱٳ�¥ from ace where �������� between 20140101 and 20150630  group by ����ȣ order by ����ȣ;

select * from RF;
create table M as
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ� from ace group by ����ȣ order by ����ȣ;

select count(����ȣ) from RF;

select ����ȣ, count(��������ȣ)
from  s_pur_copy where ���޻� ='A' and �������� between 20140101 and 20150930  group by ����ȣ order by ����ȣ;

select * from ex2;
select * from area2;

select * from purprod;
create table count5 as
select ����ȣ ����ȣ,sum(���űݾ�) ���� from purprod group by ����ȣ order by ����ȣ;
select count(*) from count5;

create table count3 as
select ����ȣ ����ȣ,sum(���űݾ�) ���� from s_pur_copy group by ����ȣ order by ����ȣ;

create table count4 as
select ����ȣ ����ȣ,sum(���űݾ�) ���� from ex2 group by ����ȣ order by ����ȣ;

select * from count4;
select ���� from count4 where ����ȣ = 19383;
select ���� from count3 where ����ȣ = 19383;

create table count2 as
select ����ȣ ����ȣ,sum(���űݾ�) ���� from s_pur_copy group by ����ȣ order by ����ȣ;
select count(����ȣ) from count;

drop table time2;
create table time2 as
select ����ȣ ����ȣ, count(��������) ���ź� from ex2 where �������� between 20140101 and 20150930  group by ����ȣ order by ����ȣ;

select * from ex2;
select * from ex;
select * from real;
select * from ex3;
select count(*) from ex2;

drop table count;
create table count as
select ����ȣ ����ȣ,sum(���űݾ�) ���� from ex2 group by ����ȣ order by ����ȣ;
select count(����ȣ) from count;


select sum(���űݾ�) from s_pur_copy group by ����ȣ order by ����ȣ;

select sum(���űݾ�) from s_pur_copy where ���޻�='A' group by ����ȣ order by ����ȣ;

drop table time;
create table time as
select ����ȣ ����ȣ, max(��������) ��������, sum(���űݾ�) ���űݾ� from purprod where �������� between 20140101 and 20150930  group by ����ȣ order by ����ȣ;

drop table time2;
create table time2 as
select ����ȣ ����ȣ, count(��������) ���ź� from purprod where �������� between 20140101 and 20150930  group by ����ȣ order by ����ȣ;

-- ���ܰ� ���ϱ�
select * from purprod;
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) from purprod where �������� between 20140101 and 20150930  group by ����ȣ order by ����ȣ;



select * from time;

create table s_pur_copy_A as select * from s_pur_copy where ���޻�='A';
select * from s_pur_copy_A;

create table s_pur_copy_B as select * from s_pur_copy where ���޻�='B';


select ����ȣ,sum(���űݾ�) from s_pur_copy where ���޻�='A' and �������� like '%2014%' group by ����ȣ order by ����ȣ;

select ����ȣ,sum(���űݾ�) from s_pur_copy where ���޻�='A' and �������� like '%2015%' group by ����ȣ order by ����ȣ;

--create table s_pur_copy2 from s_pur_copy where 


create table s_pur_copy_A1 as
select * from ex2;

select * from ex2 where ���޻� = 'B';

select * from s_pur_copy_A1;

create table s_pur_copy_A2 as select * from s_pur_copy_A1 where �������� like '%2014%';

-- �Һз��ڵ� 1�� 14�⵵�� ������ �Ѿ�
drop table s_pur_copy_A4;
create table s_pur_copy_A4 as 
select ����ȣ,sum(���űݾ�) �ѱ��ž�14 from s_pur_copy_A2 where �Һз��ڵ�=1 group by ����ȣ order by ����ȣ;
select * from s_pur_copy_A4;

-- �Һз��ڵ� 1�� 15�⵵�� ������ �Ѿ�
drop table s_pur_copy_A5;
create table s_pur_copy_A5 as 
select ����ȣ,sum(���űݾ�) �ѱ��ž�15 from s_pur_copy_A3 where �Һз��ڵ�=1 group by ����ȣ order by ����ȣ;
select * from s_pur_copy_A5;

drop table s_pur_copy_A6;
CREATE table s_pur_copy_A6 AS
SELECT T1.����ȣ ����ȣ1,T2.����ȣ ����ȣ2,T1.�ѱ��ž�14,T2.�ѱ��ž�15
FROM s_pur_copy_A4 T1 
FULL OUTER JOIN s_pur_copy_A5 T2 ON (T1.����ȣ=T2.����ȣ);
select * from s_pur_copy_A6;


ALTER TABLE s_pur_copy_A6 DROP COLUMN ����ȣ1;

-- ���ҵ� ��
select ����ȣ2 from s_pur_copy_A6
WHERE �ѱ��ž�15 < �ѱ��ž�14;

select count(*) from s_pur_copy_A6
WHERE �ѱ��ž�15 < �ѱ��ž�14; -- 6237

drop table s_pur_copy_A7;
create table s_pur_copy_A7 as select ����ȣ,sum(���űݾ�) ���ž�14_1 from s_pur_copy_A1 where �Һз��ڵ�=1 
and �������� between 20140101 and 20140630 group by ����ȣ order by ����ȣ ;
select * from s_pur_copy_A7;

drop table s_pur_copy_A8;
create table s_pur_copy_A8 as select ����ȣ,sum(���űݾ�) ���ž�14_2 from s_pur_copy_A1 where �Һз��ڵ�=1 
and �������� between 20140701 and 20141231 group by ����ȣ order by ����ȣ ;
select * from s_pur_copy_A8;

drop table s_pur_copy_A9;
create table s_pur_copy_A9 as select ����ȣ,sum(���űݾ�) ���ž�15_1 from s_pur_copy_A1 where �Һз��ڵ�=1 
and �������� between 20150101 and 20150630 group by ����ȣ order by ����ȣ ;
select * from s_pur_copy_A9;

drop table s_pur_copy_A10;
create table s_pur_copy_A10 as select ����ȣ,sum(���űݾ�) ���ž�15_2 from s_pur_copy_A1 where �Һз��ڵ�=1 
and �������� between 20150701 and 20151231 group by ����ȣ order by ����ȣ ;
select * from s_pur_copy_A10;

drop table s_pur_copy_A11;
CREATE table s_pur_copy_A11 AS
SELECT T1.����ȣ ����ȣ,T2.����ȣ ����ȣ1,T1.���ž�14_1,T2.���ž�14_2
FROM s_pur_copy_A7 T1 
FULL OUTER JOIN s_pur_copy_A8 T2 ON (T1.����ȣ=T2.����ȣ);
select * from s_pur_copy_A11;

CREATE table s_pur_copy_A12 AS
SELECT T1.����ȣ ����ȣ,T2.����ȣ ����ȣ1,T1.���ž�14_1,T1.���ž�14_2,T2.���ž�15_1
FROM s_pur_copy_A11 T1 
FULL OUTER JOIN s_pur_copy_A9 T2 ON (T1.����ȣ=T2.����ȣ);
select * from s_pur_copy_A12;

CREATE table s_pur_copy_A13 AS
SELECT T1.����ȣ ����ȣ,T2.����ȣ ����ȣ1,T1.���ž�14_1,T1.���ž�14_2,T2.���ž�15_1
FROM s_pur_copy_A12 T1 
FULL OUTER JOIN s_pur_copy_ T2 ON (T1.����ȣ=T2.����ȣ);
select * from s_pur_copy_A12;




DROP VIEW SUM_12;
CREATE VIEW SUM_12 AS
SELECT T1.����ȣ ����ȣ1,T1.���űݾ�15��_1,T1.����Ƚ��15��_1, T2.���űݾ�15��_2 ,T2.����Ƚ��15��_2
FROM T_151 T1 
FULL OUTER JOIN T_152 T2 ON (T1.����ȣ=T2.����ȣ);

select sum(���űݾ�) from s_pur_copy_A3 where �Һз��ڵ�=1 and �������� like '%2015%' group by ����ȣ order by ����ȣ;

create table s_pur_copy_A3 as select * from s_pur_copy_A1 where �������� like '%2015%';

-- ��¥ ��Ȯ�� ���̺�, ����θ�Ƽ ��
update purprod set ���űݾ� = ���űݾ�/1.01��620302175834
where �������� between 20140101 and 20140331; --3,217,669

update purprod set ���űݾ� = ���űݾ�/0.970792475064181
where �������� between 20140401 and 20140630; --3,491,713��

update purprod set ���űݾ� = ���űݾ�/0.885105845713564
where �������� between 20140701 and 20140930; --3,563,754

update purprod set ���űݾ� = ���űݾ�/1.12760405706831
where �������� between 20141001 and 20141231; -- 3,598,378

update purprod set ���űݾ� = ���űݾ�/0.988770710623332
where �������� between 20150101 and 20150331; --3,619,223

update purprod set ���űݾ� = ���űݾ�/0.932539514386203
where �������� between 20150401 and 20150630;  --3,854,875

update purprod set ���űݾ� = ���űݾ�/0.88791897961778
where �������� between 20150701 and 20150930;  --3,795,633

update purprod set ���űݾ� = ���űݾ�/1.2103055214204
where �������� between 20151001 and 20151231; --

-- ���ܰ� ���ϱ�
select * from purprod;
CREATE table month1 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20140101 and 20140331  group by ����ȣ order by ����ȣ;

select * from month1;

select ����ȣ ����ȣ, ���űݾ�/�湮�� ���ܰ� from ;


CREATE table month2 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20140401 and 20140630  group by ����ȣ order by ����ȣ;

CREATE table month3 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20140701 and 20140930  group by ����ȣ order by ����ȣ;

CREATE table month4 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20141001 and 20141231  group by ����ȣ order by ����ȣ;

CREATE table month5 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20150101 and 20150331  group by ����ȣ order by ����ȣ;

CREATE table month6 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20150401 and 20150630  group by ����ȣ order by ����ȣ;

CREATE table month7 AS
select ����ȣ ����ȣ, sum(���űݾ�) ���űݾ�, count(��������ȣ) �湮�� from purprod where �������� between 20150701 and 20150930  group by ����ȣ order by ����ȣ;

DROP table month8;
CREATE table month8 AS
SELECT T1.����ȣ ����ȣ1,T1.���űݾ� ���űݾ�, T1.�湮�� �湮��,T2.����ȣ ����ȣ2, T2.���űݾ� ���űݾ�2, T2.�湮�� �湮��2
FROM month1 T1 
FULL OUTER JOIN month2 T2 ON (T1.����ȣ=T2.����ȣ);

select * from month8;


select * from s_pur_copy_A1;
--14��1�б� ����Ƚ��
select count(����ȣ) from s_pur_copy_A1 where �������� between 20140101 and 20140331; -- 641940
--15��4�б� ����Ƚ��
select count(����ȣ) from s_pur_copy_A1 where �������� between 20151001 and 20151231; -- 722061
--14��1�б� �ѱ��ž�
select sum(���űݾ�) from s_pur_copy_A1 where �������� between 20140101 and 20140331; -- 56,183,866,877
--15��4�б� �ѱ��ž�
select sum(���űݾ�) from s_pur_copy_A1 where �������� between 20151001 and 20151231; -- 65,351,176,961
--14��1�б� ���� ����Ƚ��
select ����ȣ,count(��������ȣ) ����Ƚ�� from s_pur_copy_A1 where �������� between 20140101 and 20140331 group by ����ȣ order by ����ȣ;
--14��1�б⸦ �̿��� ���� 13856

--15��4�б� ���� ����Ƚ��
select ����ȣ,count(��������ȣ) ����Ƚ�� from s_pur_copy_A1 where �������� between 20151001 and 20151231 group by ����ȣ order by ����ȣ;
--15��4�б⸦ �̿��� ���� 14881

--
select count(*) from s_pur_copy_A1 where �������� between 20140101 and 20140331;

select * from cust;
select ����ȣ, �������� from cust group by ����ȣ,�������� order by ����ȣ;


select * from s_pur_copy;
select ����ȣ, sum(���űݾ�) ���űݾ� from s_pur_copy group by ����ȣ order by ����ȣ;
-- ����ȣ,�Ѹ��� ���̺�
drop view area;
create table area as select ����ȣ, sum(���űݾ�) ���űݾ� from s_pur_copy group by ����ȣ order by ����ȣ;
select * from area;
-- ����ȣ,�������� ���̺�
drop view area2;
DROP table area2;
create table area2 as select ����ȣ, �������� from cust group by ����ȣ,�������� order by ����ȣ;
select * from area2;
-- �Ѹ���,������ ��ģ ���̺�
DROP table region;
CREATE table region AS
SELECT T1.����ȣ ����ȣ1,T1.���űݾ�,T2.����ȣ ����ȣ2, T2.��������
FROM area T1 
FULL OUTER JOIN area2 T2 ON (T1.����ȣ=T2.����ȣ);
select * from region;
-- ����ȣ Į�� �Ѱ� ����
ALTER table region DROP COLUMN ����ȣ2;
-- ����Ȯ��
select count(*) from region;

select * from region;
-- ���������� �Ѹ���
select ��������,sum(���űݾ�) from region group by �������� order by ��������; 
-- �������� �Ѹ��� ���̺� �����
create table region_sales as select ��������,sum(���űݾ�) �Ѹ��� from region group by �������� order by ��������; 
select * from region_sales;

-- ���������� ���Ƚ��
select ��������,count(����ȣ1) ���Ƚ�� from region group by �������� order by ��������; 
-- ���������� ���Ƚ�� ���̺� �����
create table region_count as select ��������,count(����ȣ1) ���Ƚ�� from region group by �������� order by ��������;  
select * from region_count;

-- ������ ���Ƚ���� �Ѹ��� ��ģ ���̺�
DROP table region_sum;
CREATE table region_sum AS
SELECT T1.�������� ������ȣ,T1.�Ѹ���,T2.�������� ������ȣ2, T2.���Ƚ��
FROM region_sales T1 
FULL OUTER JOIN region_count T2 ON (T1.��������=T2.��������);
select * from region_sum;
-- ����ȣ Į�� �Ѱ� ����
ALTER table region_sum DROP COLUMN ������ȣ;

select trunc(avg(�Ѹ���)) from region_sum group by ������ȣ order by ������ȣ;