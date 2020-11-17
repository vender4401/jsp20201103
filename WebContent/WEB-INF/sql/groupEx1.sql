SELECT commission, NVL(commission, 0) FROM employee;

-- �׷� �Լ� -- 
SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT MAX(salary) FROM employee;
SELECT MIN(salary) FROM employee;

-- �׷��Լ��� Į���� ���� NULL �� ��� ������ (������� ����) -- 
SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

-- ������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ� ����ϱ� --
SELECT SUM(salary) "�޿� �Ѿ�", 
        AVG(salary) "�޿� ���", 
        MAX(salary) "�ִ� �޿�", 
        MIN(salary) "�ּ� �޿�" 
        FROM employee;
        
-- �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ���
SELECT MAX(hiredate) "���� �ֱ� ���", 
        MIN(hiredate) "���� ������ ���" 
        FROM employee;
        
-- ��ü ����� �� ���ϱ�
SELECT COUNT(ename) FROM employee;
-- Ŀ�̼��� �޴� ����� ���ϱ�
SELECT COUNT(commission) FROM employee;
-- DISTINCT -- ���� ������ ���� ��� (�ߺ��Ǵ� �� ����)
SELECT COUNT(DISTINCT job) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT ename FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);
        