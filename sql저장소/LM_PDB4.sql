select sum(���űݾ�) from tb ;
select * from tb;
select * from ex11 where ���޻� = 'A';

-- A���޻�
-- ����ǰ 1
update ex1 set �Һз��ڵ� = 1 
where ���޻� = 'A' and �Һз��ڵ� between 'A010101' and 'A010624'
or ���޻� = 'A' and �Һз��ڵ� between 'A010656'  and 'A011004'
or ���޻� = 'A' and �Һз��ڵ� between 'A090101'  and 'A090105'
or ���޻� = 'A' and �Һз��ڵ� = 'A030110'
or ���޻� = 'A' and �Һз��ڵ� between 'A090107'  and 'A090310'
or ���޻� = 'A' and �Һз��ڵ� = 'A030112';

-- ����ǰ 2
update ex1 set �Һз��ڵ� = 2 
where ���޻� = 'A' and �Һз��ڵ� between 'A020101'  and 'A020603'
or ���޻� = 'A' and �Һз��ڵ� between 'A020607'  and 'A030109'
or ���޻� = 'A' and �Һз��ڵ� = 'A030111'
or ���޻� = 'A' and �Һз��ڵ� between 'A040201'  and 'A070304'
or ���޻� = 'A' and �Һз��ڵ� between 'A070501'  and 'A070608'
or ���޻� = 'A' and �Һз��ڵ� between 'A090311'  and 'A090610'
or ���޻� = 'A' and �Һз��ڵ� = 'A030113';

-- ����ǰ 3
update ex1 set �Һз��ڵ� = 3
where ���޻� = 'A' and �Һз��ڵ� between 'A070401'  and 'A070403'
or ���޻� = 'A' and �Һз��ڵ� between 'A080101'  and 'A080125'
or ���޻� = 'A' and �Һз��ڵ� = 'A090701' ;

-- ��Ÿ 4
update ex1 set �Һз��ڵ� = 4
where ���޻� = 'A' and �Һз��ڵ� between 'A010625'  and 'A010655'
or ���޻� = 'A' and �Һз��ڵ� between 'A011101'  and 'A011109'
or ���޻� = 'A' and �Һз��ڵ� = 'A030114'
or ���޻� = 'A' and �Һз��ڵ� between 'A020604'  and 'A020606'
or ���޻� = 'A' and �Һз��ڵ� = 'A011101'
or ���޻� = 'A' and �Һз��ڵ� = 'A090106';

create table ex2 as select * from ex1 where ���޻�='A';
select * from ex2;

select sum(���űݾ�) from ex2 where �������� like '%2014%' group by ����ȣ order by ����ȣ;
SELECT ����ȣ,�Һз��ڵ�,count(��������) ����Ƚ�� ,sum(���űݾ�) �ѱ��ž� FROM ex2 WHERE �������� LIKE '%2014%' group by �Һз��ڵ�,����ȣ order by �Һз��ڵ�;

SELECT ����ȣ,�Һз��ڵ�,count(��������) ����Ƚ�� ,sum(���űݾ�) �ѱ��ž� FROM ex2 WHERE �������� LIKE '%2015%' group by �Һз��ڵ�,����ȣ order by �Һз��ڵ�;


create table ex3 as select * from ex2 WHERE �������� LIKE '%2014%';
select * from ex3;

select sum(���űݾ�) from ex3 group by ����ȣ;