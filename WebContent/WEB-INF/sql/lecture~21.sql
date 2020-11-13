SELECT * FROM employee;

-- �޿��� 1500 �̻��� ��� ��� �ϱ�
SELECT * FROM employee WHERE salary >= 1500;

-- 10�� �μ� �Ҽ� ��� ����ϱ�
SELECT * FROM employee WHERE dno = 10;

-- ���� ������ ��ȸ
SELECT * FROM employee WHERE ename = 'SCOTT';

-- ���� ������ ��ȸ (�Ի��� 1981/01/01) ������ ����� ����ϱ�
SELECT * FROM employee WHERE hiredate <= '1981/01/01';

-- �μ���ȣ�� 10�̰� ������ MANAGER�� ����� ����ϱ�
SELECT * FROM employee WHERE dno = 10 AND job = 'MANAGER';

-- �μ���ȣ�� 10�̰ų� ������ MANAGER�� ����� ����ϱ�
SELECT * FROM employee WHERE dno = 10 OR job = 'MANAGER';

-- NOT�� �̿��� ���� �����ϱ�
SELECT * FROM employee WHERE NOT dno = 10;
-- <>�� �̿��� ���� �����ϱ�
SELECT * FROM employee WHERE dno <> 10;

-- �޿��� 1000���� 1500������ ��� ����ϱ�
SELECT * FROM employee WHERE salary >= 1000 AND salary <=1500;

-- �޿��� 1000 �̸��̰ų� 1500 �ʰ��� ��� ����ϱ�
SELECT * FROM employee WHERE salary < 1000 OR salary > 1500;

-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;

--------------------BET WEEN---------------
-- BETWEEN AND ������ ����ϱ� (�޿��� 1000���� 1500������ ��� ����ϱ�)
SELECT * FROM employee WHERE salary BETWEEN 1000 AND 1500;

-- NOT BETWEEN AND ������ ����ϱ� (�޿��� 1000�̸��̰ų� 1500 �ʰ� ��� ����ϱ�)
SELECT * FROM employee WHERE salary NOT BETWEEN 1000 AND 1500;

-- 1982�⿡ �Ի��� ��� ����ϱ�
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

--------------------IN---------------
-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT * FROM employee WHERE commission IN (300,500,1400);

--Ŀ�̼��� 300, 500, 1400�� �ƴ� ��� ����ϱ�
SELECT * FROM employee WHERE commission NOT IN (300,500,1400);