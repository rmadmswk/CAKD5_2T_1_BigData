select * from real;
select * from five;
select count(*) from tb;
select count(*) from purprod;
select count(*) from ex2 where �ߺз��ڵ� = 101 and ���޻� = 'A'; -- 183796
select count(*) from ex2 where �ߺз��ڵ� = 102 and ���޻� = 'A'; -- 200679
select count(*) from ex2 where �ߺз��ڵ� = 103 and ���޻� = 'A'; -- 254240
select �ߺз���,count(*) from real where ���޻� ='A' group by �ߺз��� order by �ߺз���;
select �ߺз���,count(*) from real where ���޻� ='B' group by �ߺз��� order by �ߺз���;
select �ߺз���,count(*) from real where ���޻� ='C' group by �ߺз��� order by �ߺз���;
select �ߺз���,count(*) from real where ���޻� ='D' group by �ߺз��� order by �ߺз���;

select * from cust where ����ȣ=1;

select * from code;
select * from purprod;