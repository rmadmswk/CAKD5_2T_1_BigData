select * from TB;
select count(*) from TB;
select * from MEMBER;
select * from channel;
select count(*) from MEMBER;

select ����ʸ�
from member
where ����ʸ� = '���̸�Ʈ';


select * from MEMBER;
select count(*) from MEMBER;
select count(*) from member where ����ʸ� = '���̸�Ʈ';
select count(*) from member where ����ʸ� = '�ٵ���';
select count(*) from member where ����ʸ� = '�ӽ�';
select count(*) from member where ����ʸ� = '����';
-- 14�⵵ ������ ��
select count(*) from member where ���Գ�� = 201401; -- 188
select count(*) from member where ���Գ�� = 201402; -- 205
select count(*) from member where ���Գ�� = 201403; -- 468
select count(*) from member where ���Գ�� = 201404; -- 201
select count(*) from member where ���Գ�� = 201405; -- 205
select count(*) from member where ���Գ�� = 201406; -- 263
select count(*) from member where ���Գ�� = 201407; -- 252
select count(*) from member where ���Գ�� = 201408; -- 147
select count(*) from member where ���Գ�� = 201409; -- 210
select count(*) from member where ���Գ�� = 201410; -- 160
select count(*) from member where ���Գ�� = 201411; -- 179
select count(*) from member where ���Գ�� = 201412; -- 250
-- 13�⵵ ������ ��
select count(*) from member where ���Գ�� = 201301; -- 3
select count(*) from member where ���Գ�� = 201302; -- 23
select count(*) from member where ���Գ�� = 201303; -- 547
select count(*) from member where ���Գ�� = 201304; -- 127
select count(*) from member where ���Գ�� = 201305; -- 98
select count(*) from member where ���Գ�� = 201306; -- 208
select count(*) from member where ���Գ�� = 201307; -- 264
select count(*) from member where ���Գ�� = 201308; -- 140
select count(*) from member where ���Գ�� = 201309; -- 131
select count(*) from member where ���Գ�� = 201310; -- 149
select count(*) from member where ���Գ�� = 201311; -- 238
select count(*) from member where ���Գ�� = 201312; -- 239
-- 15�⵵ ������ ��
select count(*) from member where ���Գ�� = 201501; -- 150 
select count(*) from member where ���Գ�� = 201502; -- 216
select count(*) from member where ���Գ�� = 201503; -- 262
select count(*) from member where ���Գ�� = 201504; -- 192
select count(*) from member where ���Գ�� = 201505; -- 207
select count(*) from member where ���Գ�� = 201506; -- 256
select count(*) from member where ���Գ�� = 201507; -- 260
select count(*) from member where ���Գ�� = 201508; -- 227
select count(*) from member where ���Գ�� = 201509; -- 190
select count(*) from member where ���Գ�� = 201510; -- 181
select count(*) from member where ���Գ�� = 201511; -- 201
select count(*) from member where ���Գ�� = 201512; -- 213
-- 12�⵵ ������ ��
select count(*) from member where ���Գ�� = 201212; -- 1
select count(*) from member where ���Գ�� = 201211; -- 1
select count(*) from member where ���Գ�� = 201210; -- 4
select count(*) from member where ���Գ�� = 201209; -- 0
select count(*) from member where ���Գ�� = 201208; -- 0
select count(*) from member where ���Գ�� = 201207; -- 0

select count(*) from member where ���Գ�� = 201401 and ����ʸ� = '���̸�Ʈ' or ���Գ�� = 201402 and ����ʸ� = '���̸�Ʈ';

-- ����ʸ��� ���̸�Ʈ�̰� ���Գ���� 201401�� ������ ���� ���ϼ���
-- ����ʸ��� ���̸�Ʈ�̰� ���Գ��� 2014�⵵�� ������ ������ ���� ���ϼ���

-- 13,14,15�⵵ ���̸�Ʈ�� ������ ������ ��
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� like '%2013%'; -- 1007
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� like '%2014%'; -- 1599
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� like '%2015%'; -- 1812

-- 13,14,15�⵵ �ٵ��� ������ ������ ��
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� like '%2013%'; -- 1083
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� like '%2014%'; -- 616
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� like '%2015%'; -- 310

-- 13,14,15�⵵ �ӽ� ������ ������ ��
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� like '%2013%'; -- 52
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� like '%2014%'; -- 184
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� like '%2015%'; -- 151

-- 12,13,14,15�⵵ ���� ������ ������ ��
select count(*) from member where ����ʸ� = '����' and ���Գ�� like '%2012%'; -- 6
select count(*) from member where ����ʸ� = '����' and ���Գ�� like '%2013%'; -- 25
select count(*) from member where ����ʸ� = '����' and ���Գ�� like '%2014%'; -- 329
select count(*) from member where ����ʸ� = '����' and ���Գ�� like '%2015%'; -- 282



-- ���̸�Ʈ�� 13~15�⵵ ���⵵�� ������ ���� �����ڼ�
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201301; -- 0
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201302; -- 0
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201303; -- 0
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201304; -- 0
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201305; -- 0
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201306; -- 140
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201307; -- 197
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201308; -- 101
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201309; -- 92
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201310; -- 102
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201311; -- 203
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201312; -- 172

select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201401; -- 149
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201402; -- 139
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201403; -- 163
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201404; -- 141
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201405; -- 165
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201406; -- 129
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201407; -- 149
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201408; -- 100
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201409; -- 110
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201410; -- 108
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201411; -- 131
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201412; -- 115

select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201501; -- 110
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201502; -- 132
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201503; -- 132
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201504; -- 105
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201505; -- 138
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201506; -- 178
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201507; -- 204
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201508; -- 169
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201509; -- 142
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201510; -- 149
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201511; -- 167
select count(*) from member where ����ʸ� = '���̸�Ʈ' and ���Գ�� = 201512; -- 186


-- �ٵ��� 13~15�⵵ ���⵵�� ������ ���� �����ڼ�
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201301; -- 0
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201302; -- 22
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201303; -- 546
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201304; -- 124
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201305; -- 92
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201306; -- 61
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201307; -- 54
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201308; -- 31
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201309; -- 33
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201310; -- 41
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201311; -- 30
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201312; -- 49

select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201401; -- 28
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201402; -- 57
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201403; -- 293
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201404; -- 19
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201405; -- 23
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201406; -- 23
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201407; -- 46
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201408; -- 17
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201409; -- 27
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201410; -- 26
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201411; -- 28
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201412; -- 29

select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201501; -- 20
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201502; -- 66
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201503; -- 89
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201504; -- 31
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201505; -- 21
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201506; -- 15
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201507; -- 14
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201508; -- 18
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201509; -- 5
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201510; -- 7
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201511; -- 15
select count(*) from member where ����ʸ� = '�ٵ���' and ���Գ�� = 201512; -- 9


-- �ӽ� 13~15�⵵ ���⵵�� ������ ���� �����ڼ�
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201301; -- 0
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201302; -- 0
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201303; -- 0
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201304; -- 0
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201305; -- 4
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201306; -- 6
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201307; -- 8
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201308; -- 6
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201309; -- 6
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201310; -- 4
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201311; -- 2
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201312; -- 16

select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201401; -- 10
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201402; -- 9
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201403; -- 11
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201404; -- 14
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201405; -- 15
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201406; -- 24
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201407; -- 11
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201408; -- 10
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201409; -- 21
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201410; -- 13
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201411; -- 17
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201412; -- 29

select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201501; -- 13
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201502; -- 9
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201503; -- 15
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201504; -- 11
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201505; -- 13
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201506; -- 28
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201507; -- 17
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201508; -- 18
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201509; -- 8
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201510; -- 7
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201511; -- 5
select count(*) from member where ����ʸ� = '�ӽ�' and ���Գ�� = 201512; -- 7


-- ���� 13~15�⵵ ���⵵�� ������ ���� �����ڼ�
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201301; -- 3
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201302; -- 1
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201303; -- 1
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201304; -- 3
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201305; -- 2
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201306; -- 1
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201307; -- 5
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201308; -- 2
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201309; -- 0
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201310; -- 2
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201311; -- 3
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201312; -- 2

select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201401; -- 1
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201402; -- 0
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201403; -- 1
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201404; -- 27
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201405; -- 2
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201406; -- 87
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201407; -- 46
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201408; -- 20
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201409; -- 52
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201410; -- 13
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201411; -- 3
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201412; -- 77

select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201501; -- 7
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201502; -- 9
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201503; -- 26
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201504; -- 45
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201505; -- 35
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201506; -- 35
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201507; -- 25
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201508; -- 22
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201509; -- 35
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201510; -- 18
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201511; -- 14
select count(*) from member where ����ʸ� = '����' and ���Գ�� = 201512; -- 11


-- 12~15�⵵���� ����ʿ� ������ ������ ��
select * from member;
SELECT ����ʸ�, count(*) AS ���Գ��
from member
group by ����ʸ�;

-- 13�⵵�� �� ����ʿ� ������ ������ ��
SELECT ����ʸ�, count(*) AS ���Գ��
from member
where ���Գ�� like '%2013%'
group by ����ʸ�;

-- 13�⵵�� �� ����ʿ� ������ ������ ��
SELECT ����ʸ�, count(*) AS ���Գ��
from member
where ���Գ�� like '%2014%'
group by ����ʸ�;

-- 13�⵵�� �� ����ʿ� ������ ������ ��
SELECT ����ʸ�, count(*) AS ���Գ��
from member
where ���Գ�� like '%2015%'
group by ����ʸ�;

-- 12�⵵���� ������ �����ڰ� ����
select count(*) from member where ����ʸ� = '����' and ���Գ�� like '%2012%'; -- 6

select * from member ;

-- ����ȣ Ȯ��
-- 2013��~2015�⵵�� �� ���̸�Ʈ�� ������ ����ȣ�� ����
SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ���Գ�� like '%2013%'
group by ����ȣ;

SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ���Գ�� like '%2014%'
group by ����ȣ;

SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ���Գ�� like '%2015%'
group by ����ȣ;
-- ��� �ǹ̴� ���� �̹� ������ ���߱� ������


-- �׷��� Ȯ���غ��� Ÿ�翡 ���� ����ȣ�� ���� ����� �ִ��� Ȯ��
-- 2013�⵵�� 4�� ȸ�翡 ���� ����ȣ�� ���� ����� ����
SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ����ʸ� like '�ٵ���' and ����ʸ� like '����' and ����ʸ� like '�ӽ�' and ���Գ�� like '%2013%' 
group by ����ȣ;


SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ����ʸ� like '�ٵ���' and ����ʸ� like '����' and ����ʸ� like '�ӽ�' and ���Գ�� like '%2014%' 
group by ����ȣ;


SELECT ����ȣ, count(*) as ����
from member
where ����ʸ� like '���̸�Ʈ' and ����ʸ� like '�ٵ���' and ����ʸ� like '����' and ����ʸ� like '�ӽ�' and ���Գ�� like '%2015%' 
group by ����ȣ;
-- ��� Ȯ���� ���, �� ȸ�翡 ����ȣ�� ���� ���� �⵵�� �ٸ������.
-- ��� = ����ȣ�� �⵵�� ȸ�翡 ���� ������ �ٸ��� ����Ѵ�. ���� 2�� �̻��� ȸ�簡 ���� ����ȣ�� ���� ���Գ������ �⵵�� �ٸ�����̴�.

select * from channel;
select count(*) from channel; -- 8824

-- � ���޻� ����߳�
SELECT ���޻�, count(*) AS ����
from channel
group by ���޻�;

-- ����ȣ,���޻�,�̿�ȸ��

-- A����Ͼ��� �̿��� ������ ����ȣ�� �̿�Ƚ���� ���
-- A����� �� �̿�ȸ��
select * from channel where ���޻� = 'A_MOBILE/APP';
-- B����� ���� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'A_MOBILE/APP' and �̿�Ƚ�� < 10; -- 1063 , ���� �ѹ��� ���
-- B����� ���� 10�� �̻� 30�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'A_MOBILE/APP' and �̿�Ƚ�� >= 10 and �̿�Ƚ�� < 30; -- 270, �߰�
-- B����� ���� 30�� �̻� 50�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'A_MOBILE/APP' and �̿�Ƚ�� >= 30 and �̿�Ƚ�� < 50; -- 61 �� ���
-- B����� ���� 50�� �̻� ����� ��� ��
select count(*) from channel where ���޻� = 'A_MOBILE/APP' and �̿�Ƚ�� >= 50; -- 41 vip, ���

-- B����� �� �̿�ȸ��
select * from channel where ���޻� = 'B_MOBILE/APP';
-- B����� ���� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'B_MOBILE/APP' and �̿�Ƚ�� < 10; -- 2164 , ���� �ѹ��� ���
-- B����� ���� 10�� �̻� 30�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'B_MOBILE/APP' and �̿�Ƚ�� >= 10 and �̿�Ƚ�� < 30; -- 1889, �߰�
-- B����� ���� 30�� �̻� 50�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'B_MOBILE/APP' and �̿�Ƚ�� >= 30 and �̿�Ƚ�� < 50; -- 819 �� ���
-- B����� ���� 50�� �̻� ����� ��� ��
select count(*) from channel where ���޻� = 'B_MOBILE/APP' and �̿�Ƚ�� >= 50; -- 298 vip, ���

-- C����� �� �̿�ȸ��
select * from channel where ���޻� = 'C_MOBILE/APP';
-- B����� ���� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'C_MOBILE/APP' and �̿�Ƚ�� < 10; -- 46 ���� �ѹ��� ���


-- D����� �� �̿�ȸ��
select * from channel where ���޻� = 'D_MOBILE/APP';
-- B����� ���� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'D_MOBILE/APP' and �̿�Ƚ�� < 10; -- 222
-- B����� ���� 10�� �̻� 30�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'D_MOBILE/APP' and �̿�Ƚ�� >= 10 and �̿�Ƚ�� < 30; -- 5


-- B�¶��θ� �̿�ȸ��
select * from channel where ���޻� = 'B_ONLINEMALL';
-- B����� ���� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'B_ONLINEMALL' and �̿�Ƚ�� < 10; -- 1046 , ���� �ѹ��� ���
-- B����� ���� 10�� �̻� 30�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'B_ONLINEMALL' and �̿�Ƚ�� >= 10 and �̿�Ƚ�� < 30; -- 246, �߰�
-- B����� ���� 30�� �̻� 50�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'B_ONLINEMALL' and �̿�Ƚ�� >= 30 and �̿�Ƚ�� < 50; -- 18 �� ���
-- B����� ���� 50�� �̻� ����� ��� ��
select count(*) from channel where ���޻� = 'B_ONLINEMALL' and �̿�Ƚ�� >= 50; -- 18 vip, ���

-- C�¶��θ� �̿�ȸ��
select * from channel where ���޻� = 'C_ONLINEMALL';
-- C�¶��θ� �� 10�� �̸� ����� ��� ��
select count(*) from channel where ���޻� = 'C_ONLINEMALL' and �̿�Ƚ�� < 10; -- 501 , ���� �ѹ��� ���
-- C�¶��θ��� 10�� �̻� 30�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'C_ONLINEMALL' and �̿�Ƚ�� >= 10 and �̿�Ƚ�� < 30; -- 97, �߰�
-- BC�¶��θ��� 30�� �̻� 50�� �̸����� ����� ��� ��
select count(*) from channel where ���޻� = 'C_ONLINEMALL' and �̿�Ƚ�� >= 30 and �̿�Ƚ�� < 50; -- 15 �� ���
-- C�¶��θ��� 50�� �̻� ����� ��� ��
select count(*) from channel where ���޻� = 'C_ONLINEMALL' and �̿�Ƚ�� >= 50; -- 5 vip, ���5

-- ȥ�ڼ� ���� ���޻縦 ����� ����� �� 
SELECT ����ȣ,
count(����ȣ)
from channel
group by ����ȣ
having count(����ȣ)>1; -- 1769


select * from channel;
-- �����ؼ� ����
select * from channel order by ����ȣ;
-- A����� �۰� B����� ���� �Ѵ� ����� ���� ��  
