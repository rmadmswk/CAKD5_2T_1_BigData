select * from tb;
select count(*) from member where ����ʸ� = '�ٵ���';
select * from tb where ���޻� = 'A' and �������� = '%2014%'; 
select sum(���űݾ�) from tb;
select count(*) from product3;

create table real as select * from product3;
select * from real;

alter table real drop column �ߺз��ڵ�;
alter table real drop column �Һз��ڵ�;

-- ��
update real set �Һз��ڵ� = 101  
where ���޻� = 'B' and �Һз��ڵ� between 29 and 36
or ���޻� = 'B' and �Һз��ڵ� between 44 and 45
or ���޻� = 'B' and �Һз��ڵ� between 49 and 51
or ���޻� = 'B' and �Һз��ڵ� = 66
or ���޻� = 'B' and �Һз��ڵ� between 68 and 71
or ���޻� = 'B' and �Һз��ڵ� = 90; -- 521
-- ��
update real set �Һз��ڵ� = 102 
where ���޻� = 'B' and �Һз��ڵ� between 1 and 7
or ���޻� = 'B' and �Һз��ڵ� between 9 and 16
or ���޻� = 'B' and �Һз��ڵ� = 43
or ���޻� = 'B' and �Һз��ڵ� between 46 and 48
or ���޻� = 'B' and �Һз��ڵ� between 37 and 38
or ���޻� = 'B' and �Һз��ڵ� between 52 and 65
or ���޻� = 'B' and �Һз��ڵ� = 67
or ���޻� = 'B' and �Һз��ڵ� between 72 and 83
or ���޻� = 'B' and �Һз��ڵ� = 89
or ���޻� = 'B' and �Һз��ڵ� between 91 and 92; -- 1353
-- ��
update real set �Һз��ڵ� = 103
where ���޻� = 'B' and �Һз��ڵ� = 8
or ���޻� = 'B' and �Һз��ڵ� between 17 and 28
or ���޻� = 'B' and �Һз��ڵ� between 39 and 42
or ���޻� = 'B' and �Һз��ڵ� between 84 and 88; -- 750

-- 101.102.103 ���� �ٲ����� Ȯ��
select * from real where ���޻� = 'B';

-- 101,102,103�� ���� ���� �ǽ���(1,2,3)������ �ѹ��� ������Ʈ
update real set �Һз��ڵ� = 1
where ���޻� = 'B' and �Һз��ڵ� = 101;

update real set �Һз��ڵ� = 2
where ���޻� = 'B' and �Һз��ڵ� = 102;

update real set �Һз��ڵ� = 3
where ���޻� = 'B' and �Һз��ڵ� = 103;

-- 1.2.3 ���� �ٲ����� �ѹ��� Ȯ��
select * from real where ���޻� = 'B';

-- ���޻� A
-- ��
update real set �Һз��ڵ� = 101
where ���޻� = 'A' and �Һз��ڵ� between 2 and 6
or ���޻� = 'A' and �Һз��ڵ� = 8;

-- ��
update real set �Һз��ڵ� = 102
where ���޻� = 'A' and �Һз��ڵ� =1; -- 138

-- ��
update real set �Һз��ڵ� = 103
where ���޻� = 'A' and �Һз��ڵ� = 7
or ���޻� = 'A' and �Һз��ڵ� = 9; -- 52

-- �ڵ� 1,2,3 ���� ����
update real set �Һз��ڵ� = 1
where ���޻� = 'A' and �Һз��ڵ� = 101;

update real set �Һз��ڵ� = 2
where ���޻� = 'A' and �Һз��ڵ� = 102;

update real set �Һз��ڵ� = 3
where ���޻� = 'A' and �Һз��ڵ� = 103;




select * from product3;
--select count(*) from product3;

create table ex as select * from product3;
select * from ex;

select * from tb;
create table ex1 as select * from tb;
select * from ex where ���޻� = 'A';

create table ex as select * from product3;
-- create table ���θ��� ���̺� �� as select * from ��з��ڵ� �ִ� ������ ���̺��
select * from ex;
-- A���޻�
-- ����ǰ 1
update ex set �Һз��ڵ� = 1 
where ���޻� = 'A' and �Һз��ڵ� between 'A010101' and 'A010624'
or ���޻� = 'A' and �Һз��ڵ� between 'A010656'  and 'A011004'
or ���޻� = 'A' and �Һз��ڵ� between 'A090101'  and 'A090105'
or ���޻� = 'A' and �Һз��ڵ� = 'A030110'
or ���޻� = 'A' and �Һз��ڵ� between 'A090107'  and 'A090310'
or ���޻� = 'A' and �Һз��ڵ� = 'A030112';

-- ����ǰ 2
update ex set �Һз��ڵ� = 2 
where ���޻� = 'A' and �Һз��ڵ� between 'A020101'  and 'A020603'
or ���޻� = 'A' and �Һз��ڵ� between 'A020607'  and 'A030109'
or ���޻� = 'A' and �Һз��ڵ� = 'A030111'
or ���޻� = 'A' and �Һз��ڵ� between 'A040201'  and 'A070304'
or ���޻� = 'A' and �Һз��ڵ� between 'A070501'  and 'A070608'
or ���޻� = 'A' and �Һз��ڵ� between 'A090311'  and 'A090610'
or ���޻� = 'A' and �Һз��ڵ� = 'A030113';

-- ����ǰ 3
update ex set �Һз��ڵ� = 3
where ���޻� = 'A' and �Һз��ڵ� between 'A070401'  and 'A070403'
or ���޻� = 'A' and �Һз��ڵ� between 'A080101'  and 'A080125'
or ���޻� = 'A' and �Һз��ڵ� = 'A090701' ;

-- ��Ÿ 4
update ex set �Һз��ڵ� = 4
where ���޻� = 'A' and �Һз��ڵ� between 'A010625'  and 'A010655'
or ���޻� = 'A' and �Һз��ڵ� between 'A011101'  and 'A011109'
or ���޻� = 'A' and �Һз��ڵ� = 'A030114'
or ���޻� = 'A' and �Һз��ڵ� between 'A020604'  and 'A020606'
or ���޻� = 'A' and �Һз��ڵ� = 'A011101'
or ���޻� = 'A' and �Һз��ڵ� = 'A090106';

-- B���޻�
select * from ex where ���޻� = 'B';
update ex set �Һз��ڵ� = 1 
where ���޻� = 'B' and �Һз��ڵ� between 'B010101' and 'B050512'
or ���޻� = 'B' and �Һз��ڵ� between 'B050701'  and 'B071101'
or ���޻� = 'B' and �Һз��ڵ� between 'B090201'  and 'B130211'
or ���޻� = 'B' and �Һз��ڵ� between 'B130401'  and 'B200602'
or ���޻� = 'B' and �Һз��ڵ� between 'B200801'  and 'B220206'
or ���޻� = 'B' and �Һз��ڵ� between 'B220501'  and 'B220601'
or ���޻� = 'B' and �Һз��ڵ� between 'B230201'  and 'B230212'
or ���޻� = 'B' and �Һз��ڵ� between 'B240101'  and 'B260101'
or ���޻� = 'B' and �Һз��ڵ� = 'B260103'
or ���޻� = 'B' and �Һз��ڵ� between 'B260109'  and 'B260111'
or ���޻� = 'B' and �Һз��ڵ� between 'B260114'  and 'B260310'
or ���޻� = 'B' and �Һз��ڵ� between 'B260501'  and 'B260508'
or ���޻� = 'B' and �Һз��ڵ� between 'B260701'  and 'B260807'
or ���޻� = 'B' and �Һз��ڵ� between 'B261001'  and 'B261004'
or ���޻� = 'B' and �Һз��ڵ� between 'B281101'  and 'B281106'
or ���޻� = 'B' and �Һз��ڵ� between 'B340101'  and 'B340410'
or ���޻� = 'B' and �Һз��ڵ� between 'B380101'  and 'B380802'
or ���޻� = 'B' and �Һз��ڵ� between 'B430101'  and 'B431101'
or ���޻� = 'B' and �Һз��ڵ� between 'B450301'  and 'B450312'
or ���޻� = 'B' and �Һз��ڵ� between 'B460101'  and 'B480501'
or ���޻� = 'B' and �Һз��ڵ� between 'B520101'  and 'B550206'
or ���޻� = 'B' and �Һз��ڵ� between 'B550401'  and 'B660805'
or ���޻� = 'B' and �Һз��ڵ� between 'B700501'  and 'B700502'
or ���޻� = 'B' and �Һз��ڵ� between 'B720101'  and 'B750103'
or ���޻� = 'B' and �Һз��ڵ� between 'B750401'  and 'B750402'
or ���޻� = 'B' and �Һз��ڵ� between 'B760101'  and 'B840406'
or ���޻� = 'B' and �Һз��ڵ� between 'B860101'  and 'B860603'
or ���޻� = 'B' and �Һз��ڵ� between 'B870301'  and 'B870302'
or ���޻� = 'B' and �Һз��ڵ� between 'B870403'  and 'B870703'
or ���޻� = 'B' and �Һз��ڵ� between 'B890101'  and 'B920603'; -- 1734

update ex set �Һз��ڵ� = 2 
where ���޻� = 'B' and �Һз��ڵ� between 'B050601' and 'B050607'
or ���޻� = 'B' and �Һз��ڵ� between 'B130301'  and 'B130306'
or ���޻� = 'B' and �Һз��ڵ� between 'B200701'  and 'B200705'
or ���޻� = 'B' and �Һз��ڵ� between 'B220301'  and 'B220402'
or ���޻� = 'B' and �Һз��ڵ� between 'B220701'  and 'B230106'
or ���޻� = 'B' and �Һз��ڵ� between 'B230301'  and 'B230503'
or ���޻� = 'B' and �Һз��ڵ� between 'B260106'  and 'B260108'
or ���޻� = 'B' and �Һз��ڵ� between 'B260112'  and 'B260113'
or ���޻� = 'B' and �Һз��ڵ� between 'B260401'  and 'B260405'
or ���޻� = 'B' and �Һз��ڵ� between 'B260601'  and 'B260617'
or ���޻� = 'B' and �Һз��ڵ� between 'B260901'  and 'B260903'
or ���޻� = 'B' and �Һз��ڵ� between 'B261005'  and 'B270506'
or ���޻� = 'B' and �Һз��ڵ� between 'B270701'  and 'B280305'
or ���޻� = 'B' and �Һз��ڵ� between 'B280501'  and 'B281004'
or ���޻� = 'B' and �Һз��ڵ� between 'B281201'  and 'B330803'
or ���޻� = 'B' and �Һз��ڵ� between 'B350101'  and 'B360802'
or ���޻� = 'B' and �Һз��ڵ� between 'B390101'  and 'B421301'
or ���޻� = 'B' and �Һз��ڵ� between 'B440101'  and 'B440902'
or ���޻� = 'B' and �Һз��ڵ� between 'B450501'  and 'B450702'
or ���޻� = 'B' and �Һз��ڵ� between 'B450704'  and 'B451901'
or ���޻� = 'B' and �Һз��ڵ� between 'B490101'  and 'B510309'
or ���޻� = 'B' and �Һз��ڵ� between 'B550301'  and 'B550308'
or ���޻� = 'B' and �Һз��ڵ� between 'B680101'  and 'B700405'
or ���޻� = 'B' and �Һз��ڵ� between 'B700503'  and 'B710304'
or ���޻� = 'B' and �Һз��ڵ� between 'B750201'  and 'B750304'
or ���޻� = 'B' and �Һз��ڵ� between 'B750501'  and 'B750502'
or ���޻� = 'B' and �Һз��ڵ� between 'B850101'  and 'B850204'
or ���޻� = 'B' and �Һз��ڵ� between 'B870101'  and 'B870105'
or ���޻� = 'B' and �Һз��ڵ� between 'B870201'  and 'B870203'
or ���޻� = 'B' and �Һз��ڵ� between 'B870401'  and 'B870402'
or ���޻� = 'B' and �Һз��ڵ� between 'B880101'  and 'B880302'; -- 762

update ex set �Һз��ڵ� = 3 
where ���޻� = 'B' and �Һз��ڵ� between 'B450101' and 'B450206'
or ���޻� = 'B' and �Һз��ڵ� between 'B450401'  and 'B450402'
or ���޻� = 'B' and �Һз��ڵ� = 'B450703'; -- 14

update ex set �Һз��ڵ� = 4 
where ���޻� = 'B' and �Һз��ڵ� between 'B080101' and 'B090103'
or ���޻� = 'B' and �Һз��ڵ� = 'B260102'
or ���޻� = 'B' and �Һз��ڵ� between 'B260104'  and 'B260105'
or ���޻� = 'B' and �Һз��ڵ� between 'B270601'  and 'B270606'
or ���޻� = 'B' and �Һз��ڵ� = 'B280401'
or ���޻� = 'B' and �Һз��ڵ� between 'B370101'  and 'B371003'
or ���޻� = 'B' and �Һз��ڵ� between 'B510401'  and 'B510503'
or ���޻� = 'B' and �Һз��ڵ� between 'B670101'  and 'B670405'; -- 114

-- C���޻�
update ex set �Һз��ڵ� = 1 
where ���޻� = 'C' and �Һз��ڵ� between 'C010101' and 'C130603'
or ���޻� = 'C' and �Һз��ڵ� between 'C130701'  and 'C170310'
or ���޻� = 'C' and �Һз��ڵ� between 'C170316'  and 'C170317'
or ���޻� = 'C' and �Һз��ڵ� between 'C170326'  and 'C170329'
or ���޻� = 'C' and �Һз��ڵ� between 'C170357'  and 'C170435'
or ���޻� = 'C' and �Һз��ڵ� between 'C170535'  and 'C170655'
or ���޻� = 'C' and �Һз��ڵ� = 'C170657'
or ���޻� = 'C' and �Һз��ڵ� = 'C170660'
or ���޻� = 'C' and �Һз��ڵ� between 'C170662'  and 'C170663'
or ���޻� = 'C' and �Һз��ڵ� between 'C170665'  and 'C170701'; -- 900

update ex set �Һз��ڵ� = 2 
where ���޻� = 'C' and �Һз��ڵ� between 'C130604' and 'C130608'
or ���޻� = 'C' and �Һз��ڵ� between 'C170311'  and 'C170315'
or ���޻� = 'C' and �Һз��ڵ� between 'C170318'  and 'C170325'
or ���޻� = 'C' and �Һз��ڵ� between 'C170330'  and 'C170356'
or ���޻� = 'C' and �Һз��ڵ� between 'C170436'  and 'C170534'
or ���޻� = 'C' and �Һз��ڵ� = 'C170656'
or ���޻� = 'C' and �Һз��ڵ� between 'C170658'  and 'C170659'
or ���޻� = 'C' and �Һз��ڵ� = 'C170661'
or ���޻� = 'C' and �Һз��ڵ� = 'C170664'; -- 87

-- ���޻� D
update ex set �Һз��ڵ� = 1 
where ���޻� = 'D' and �Һз��ڵ� between 'D010101' and 'D020504'
or ���޻� = 'D' and �Һз��ڵ� between 'D030201'  and 'D050205'
or ���޻� = 'D' and �Һз��ڵ� between 'D060101'  and 'D060501'
or ���޻� = 'D' and �Һз��ڵ� between 'D070101'  and 'D080401'; -- 136

update ex set �Һз��ڵ� = 2 
where ���޻� = 'D' and �Һз��ڵ� between 'D030101' and 'D030103'
or ���޻� = 'D' and �Һз��ڵ� between 'D050301'  and 'D050302'
or ���޻� = 'D' and �Һз��ڵ� between 'D060502'  and 'D060801'; -- 9

select * from ex where ���޻� = 'D';

select * from member;
select count(*) from cust;

select * from ex where ���޻� = 'A';