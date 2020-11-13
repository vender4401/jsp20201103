SELECT * FROM employee;
SELECT * FROM department;

SELECT dno, dname, loc FROM department WHERE dno =10;
-- 1��
SELECT ename �̸�, salary "2020�� �޿�", salary + 300 "2021�� �޿�(��µ�)" FROM employee;

-- 2�� �� ���Լ� ���� ����ϱ� 
SELECT ename, salary, salary * 12 + 100 FROM employee ORDER BY salary * 12 + 100 desc;

-- 3�� �޿��� ���� ��� �ϱ�
SELECT ename, salary FROM employee WHERE salary > 2000 ORDER BY salary desc;

-- 4�� �����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����ϱ�
SELECT ename, dno FROM employee WHERE eno = 7788;

-- 5�� �޿��� 2000���� 3000���̿� ���Ե��� �ʴ� ��� ����ϱ�
SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

-- 6�� 1981�� 2�� 20�Ϻ��� 1981�� 5�� 1�� ���̿� �Ի��� ��� ����ϱ�
SELECT ename, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 7�� �μ� 20�� 30�� ���� ��� ����ϱ�
SELECT ename, dno FROM employee WHERE dno IN (20, 30);

-- 8�� �޿��� 2000���� 3000���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30�� ��� ����ϱ�
SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 AND dno IN (20, 30);

-- 9�� 1981�⵵�� �Ի��� ���� ã��
SELECT ename FROM employee WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31';
SELECT ename FROM employee WHERE hiredate LIKE '81%';

-- 10�� �����ڰ� ���� ����� �̸��� ��� ������ ���
SELECT ename, job FROM employee WHERE manager IS NULL;

-- 11�� Ŀ�̼��� ������ �ִ� �ڰ��� �Ǵ� ��� ���(�ڰ��̵Ǵ� ����̸�, �޿�,Ŀ�̼� ��� �ϰ� �޿��� Ŀ�̼� ������ �������� ����)
SELECT ename, salary, commission FROM employee WHERE commission IS NOT NULL ORDER BY salary DESC, commission DESC;

-- 12�� �̸��� ����° ���ڰ� R�� ����� �̸��� ���
SELECT ename FROM employee WHERE ename LIKE '__R%';

-- 13�� �̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸� ���
SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

-- 14�� ��� ������ �繫��(CLERK) �Ǵ� �������(SALESMAN)�̸鼭 �޿��� $1600, $950 �Ǵ� $1300 �� �ƴ� 
-- ����� �̸�, ������, �޿��� ���
SELECT ename, job, salary FROM employee WHERE job IN ('CLERK', 'SALESMAN') AND salary NOT IN (1600, 950, 1300);

-- 15�� Ŀ�̼��� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼� ���
SELECT ename, salary, commission FROM employee WHERE commission >= 500;