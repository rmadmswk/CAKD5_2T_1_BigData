select * from product3;
select * from product3 where ���޻� ='B';
select count(*) from product3 where ���޻� ='B'; --2624
-- ���̺� ����
-- create table �ű����̺�� as select * from ���������̺��;
create table pro2 as select * from product3;

-- ������ pro1 ���̺��� ���� product3 ���̺�� ������ Ȯ��
select * from pro2 where ���޻� = 'B';
select count(*) from pro2 where ���޻� ='B'; -- 2624

-- ��
update pro2 set ��з��ڵ� = 101  
where ���޻� = 'B' and ��з��ڵ� between 29 and 36
or ���޻� = 'B' and ��з��ڵ� between 44 and 45
or ���޻� = 'B' and ��з��ڵ� between 49 and 51
or ���޻� = 'B' and ��з��ڵ� = 66
or ���޻� = 'B' and ��з��ڵ� between 68 and 71
or ���޻� = 'B' and ��з��ڵ� = 90; -- 521
-- ��
update pro2 set ��з��ڵ� = 102 
where ���޻� = 'B' and ��з��ڵ� between 1 and 7
or ���޻� = 'B' and ��з��ڵ� between 9 and 16
or ���޻� = 'B' and ��з��ڵ� = 43
or ���޻� = 'B' and ��з��ڵ� between 46 and 48
or ���޻� = 'B' and ��з��ڵ� between 37 and 38
or ���޻� = 'B' and ��з��ڵ� between 52 and 65
or ���޻� = 'B' and ��з��ڵ� = 67
or ���޻� = 'B' and ��з��ڵ� between 72 and 83
or ���޻� = 'B' and ��з��ڵ� = 89
or ���޻� = 'B' and ��з��ڵ� between 91 and 92; -- 1353
-- ��
update pro2 set ��з��ڵ� = 103
where ���޻� = 'B' and ��з��ڵ� = 8
or ���޻� = 'B' and ��з��ڵ� between 17 and 28
or ���޻� = 'B' and ��з��ڵ� between 39 and 42
or ���޻� = 'B' and ��з��ڵ� between 84 and 88; -- 750
-- 101.102.103 ���� �ٲ����� Ȯ��
select * from pro2 where ���޻� = 'B';

-- 101,102,103�� ���� ���� �ǽ���(1,2,3)������ �ѹ��� ������Ʈ
update pro2 set ��з��ڵ� = 1
where ���޻� = 'B' and ��з��ڵ� = 101;

update pro2 set ��з��ڵ� = 2
where ���޻� = 'B' and ��з��ڵ� = 102;

update pro2 set ��з��ڵ� = 3
where ���޻� = 'B' and ��з��ڵ� = 103;
-- 1.2.3 ���� �ٲ����� �ѹ��� Ȯ��
select * from pro2 where ���޻� = 'B';
select * from pro2 where ���޻� = 'B' and ��з��ڵ� = 1;

select * from pro2 where ���޻� = 'B' and �ߺз��� = 'Ǫ����Ʈ' or  ���޻� = 'B' and �ߺз��� = '����ħ����' or ���޻� = 'B' and �ߺз��� = '��������ǰ';

alter table pro2 drop column �ߺз��ڵ�;
alter table pro2 drop column �Һз��ڵ�;


-- ���Ż�ǰTR �뷮 ����ū��
select * from tb; -- ���� ����Ʈ�� ���̺��
select * from tb where ���޻� ='B';
select count(*) from tb where ���޻� ='B'; -- 13338074

-- ���̺� ����
-- create table �ű����̺�� as select * from ���������̺��;
create table tb1 as select * from tb;

-- ������ tb1 ���̺��� ���� tb ���̺�� ������ Ȯ��
select * from tb1 where ���޻� = 'B';
select count(*) from tb1 where ���޻� ='B'; -- 13338074

-- ��
update tb1 set ��з��ڵ� = 101  
where ���޻� = 'B' and ��з��ڵ� between 29 and 36
or ���޻� = 'B' and ��з��ڵ� between 44 and 45
or ���޻� = 'B' and ��з��ڵ� between 49 and 51
or ���޻� = 'B' and ��з��ڵ� = 66
or ���޻� = 'B' and ��з��ڵ� between 68 and 71
or ���޻� = 'B' and ��з��ڵ� = 90; -- 762,010
-- ��
update tb1 set ��з��ڵ� = 102 
where ���޻� = 'B' and ��з��ڵ� between 1 and 7
or ���޻� = 'B' and ��з��ڵ� between 9 and 16
or ���޻� = 'B' and ��з��ڵ� = 43
or ���޻� = 'B' and ��з��ڵ� between 46 and 48
or ���޻� = 'B' and ��з��ڵ� between 37 and 38
or ���޻� = 'B' and ��з��ڵ� between 52 and 65
or ���޻� = 'B' and ��з��ڵ� = 67
or ���޻� = 'B' and ��з��ڵ� between 72 and 83
or ���޻� = 'B' and ��з��ڵ� = 89
or ���޻� = 'B' and ��з��ڵ� between 91 and 92; -- 10,533,292
-- ��
update tb1 set ��з��ڵ� = 103
where ���޻� = 'B' and ��з��ڵ� = 8
or ���޻� = 'B' and ��з��ڵ� between 17 and 28
or ���޻� = 'B' and ��з��ڵ� between 39 and 42
or ���޻� = 'B' and ��з��ڵ� between 84 and 88; -- 2,042,772
-- 101.102.103 ���� �ٲ����� Ȯ��
select * from tb1 where ���޻� = 'B';

-- 101,102,103�� ���� ���� �ǽ���(1,2,3)������ �ѹ��� ������Ʈ
update tb1 set ��з��ڵ� = 1
where ���޻� = 'B' and ��з��ڵ� = 101;

update tb1 set ��з��ڵ� = 2
where ���޻� = 'B' and ��з��ڵ� = 102;

update tb1 set ��з��ڵ� = 3
where ���޻� = 'B' and ��з��ڵ� = 103;
-- 1.2.3 ���� �ٲ����� �ѹ��� Ȯ��
select * from tb1 where ���޻� = 'B';
select * from tb1 where ���޻� = 'B' and ��з��ڵ� = 1;

alter table tb1 drop column �ߺз��ڵ�;
alter table tb1 drop column �Һз��ڵ�;

select * from tb1;
select * from cp;
select * from pro2;

select * from tb1 where ����ȣ = 17406 and ���޻� = 'B' ;
select sum(���űݾ�) from tb1 where ����ȣ = 17406 and ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2014%'; -- 1338760
select sum(���űݾ�) from tb1 where ����ȣ = 17406 and ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2015%'; -- 1523250

select * from tb1 where ����ȣ = 18874 and ���޻� = 'B' ;
select sum(���űݾ�) from tb1 where ����ȣ = 18874 and ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2014%'; -- 367000
select sum(���űݾ�) from tb1 where ����ȣ = 18874 and ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2015%'; -- 105580

select ����ȣ
from tb1
where sum(���űݾ�) > sum(���űݾ�) and ���޻� ='B' and ��з��ڵ� = 1;


-- ���޻� B�� '�Ƿ�' �κ��� 14,15�⵵ �� ���� �ݾ� 
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2014%';  -- 10,136,864,476
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%2015%';  -- 10,181,739,329

select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%2014%';  -- 34,951,328,105
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%2015%';  -- 34,020,421,596

select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%2014%';  -- 11,282,742,510
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%2015%';  -- 10,648,590,462

-- ��
--SELECT NAME, SUM(SALEPRICE)
--FROM CUSTOMER,ORDERS
--WHERE CUSTOMER.CUSTID = ORDERS.CUSTID
--GROUP BY CUSTOMER.NAME
--ORDER BY CUSTOMER.NAME;
select ����ȣ as �ʻ��,sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201401%' or -- 791554948
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201402%' or -- 688464850
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201403%' or -- 857668785
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201404%' or -- 784402343
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201405%' or  -- 940038820
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201407%' or -- 797307036
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201408%' or -- 678729230
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201409%' or -- 841073464
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201410%' or -- 959974510
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201411%' or -- 964437520
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201412%'
group by ����ȣ
order by ����ȣ;


select ����ȣ,sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201501%' or -- 791554948
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201502%' or -- 688464850
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201503%' or -- 857668785
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201504%' or -- 784402343
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201505%' or  -- 940038820
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201507%' or -- 797307036
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201508%' or -- 678729230
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201509%' or -- 841073464
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201510%' or -- 959974510
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201511%' or -- 964437520
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201512%'
group by ����ȣ
order by ����ȣ;

select ��������,sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201501%' or -- 791554948
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201502%' or -- 688464850
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201503%' or -- 857668785
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201504%' or -- 784402343
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201505%' or  -- 940038820
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201507%' or -- 797307036
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201508%' or -- 678729230
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201509%' or -- 841073464
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201510%' or -- 959974510
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201511%' or -- 964437520
���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201512%'
group by ��������
order by ��������;


select ��������,sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201501%'
group by ��������
order by ��������;

select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201501%'; -- 832005700
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201502%'; -- 804681730
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201503%'; -- 881340712
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201504%'; -- 871555105
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201505%'; -- 988472550
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201506%'; -- 808150180
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201507%'; -- 854337850
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201508%'; -- 691116932
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201509%'; -- 899911540
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201510%'; -- 762086110
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201511%'; -- 942652140
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 1 and �������� like '%201512%'; -- 845429140

-- ��
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201401%'; -- 3209266632
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201402%'; -- 2455823121
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201403%'; -- 2978702965
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201404%'; -- 2951374729
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201405%'; -- 2886884109
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201406%'; -- 3164031784
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201407%'; -- 2999099510
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201408%'; -- 3309605411
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201409%'; -- 2815475637
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201410%'; -- 2840414277
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201411%'; -- 2603511068
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201412%'; -- 2737138862

select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201501%'; -- 2884676358
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201502%'; -- 3012112584
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201503%'; -- 2978702965
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201504%'; -- 2951374729
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201505%'; -- 2886884109
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201506%'; -- 3164031784
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201507%'; -- 2999099510
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201508%'; -- 3309605411
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201509%'; -- 2815475637
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201510%'; -- 2840414277
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201511%'; -- 2603511068
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 2 and �������� like '%201512%'; -- 2737138862

-- ��
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201401%'; -- 791554948
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201402%'; -- 688464850
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201403%'; -- 857668785
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201404%'; -- 784402343
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201405%'; -- 940038820
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201406%'; -- 802145110
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201407%'; -- 797307036
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201408%'; -- 678729230
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201409%'; -- 841073464
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201410%'; -- 959974510
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201411%'; -- 964437520
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201412%';

select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201401%'; -- 791554948
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201402%'; -- 688464850
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201403%'; -- 857668785
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201404%'; -- 784402343
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201405%'; -- 940038820
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201406%'; -- 802145110
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201407%'; -- 797307036
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201408%'; -- 678729230
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201409%'; -- 841073464
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201410%'; -- 959974510
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201411%'; -- 964437520
select sum(���űݾ�) from tb1 where ���޻� ='B' and ��з��ڵ� = 3 and �������� like '%201412%';