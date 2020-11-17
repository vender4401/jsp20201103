-- 1�� ������� �޿� �ְ��, ������, �Ѿ� �� ��� �޿��� ��� (��տ� ���ؼ��� ������ �ݿø�)
SELECT MAX(salary) "�ְ� �޿�", 
        MIN(salary) "���� �޿�", 
        ROUND(AVG(salary)) "��� �޿�"
        FROM employee;
        
-- 2�� �� ������ �������� �޿� �ְ��, ������, �Ѿ� �� ��վ� ���( ��տ� ���ؼ��� ������ �ݿø�)
SELECT job, MAX(salary) "Max", 
            MIN(salary) "Min", 
            SUM(salary) "Sum", 
            ROUND(AVG(salary)) "Avg" 
            FROM employee GROUP BY job;
            
-- 3�� COUNT(*) �Լ��� �̿��Ͽ� ��� ������ ������ ������� ���
SELECT job, COUNT(*) FROM employee GROUP BY job;

-- 4�� ������ ���� ���� 
SELECT COUNT(manager) FROM employee;

-- 5�� �޿� �ְ��, �޿� �������� ������ ���
SELECT MAX(salary) - MIN(salary) "�ְ�޿��� �����޿� ����" FROM employee;

-- 6�� ���޺� ����� ���� �޿� ���.(�����ڸ� �˼� ���� ��������� �޿��� 2000 �̸��� �׷��� ���� ����� �޿��� ���� ������������)
SELECT job, MIN(salary) FROM employee GROUP BY job HAVING NOT MIN(salary) < 2000 ORDER BY MIN (salary) DESC;

-- 7�� �μ���ȣ, ����� , �μ����� ��� ����� ��� �޿��� ��� (��� �޿��� �Ҽ��� �Ѥ� �ڸ��� �ݿø�)
-- ORDER BY �� �⺻���� ���������̶� ASC�� ���� ����
SELECT dno, COUNT(ename) "Number of Peaple", ROUND(AVG(salary)) FROM employee GROUP BY dno ORDER BY dno;

-- 8�� �μ���ȣ �̸�, ������, �����, �μ����� ��� ����� ��� �޿� ���
SELECT DECODE(dno, 10, 'ACCOUNTING',  
                    20, 'RESEARCH', 
                    30, 'SALES', 
                    40, 'OPERATIONS') "Dname", 
        DECODE(dno, 10, 'NEW YORK',  
                    20, 'DALLAS', 
                    30, 'CHICAGO', 
                    40, 'BOSTON') "Locarion", 
        COUNT(*) "Number People", ROUND(AVG(salary)) FROM employee GROUP BY dno;
        
-- 9�� ������ ǥ���Ѵ��� �ش������ ���� �μ���ȣ�� �޿� �� �μ� �� �޿� �Ѿ��� ���� ���
SELECT job, dno, NVL(DECODE (dno, 10, SUM(salary)), 0) "10 �μ�", 
                NVL(DECODE (dno, 20, SUM(salary)), 0) "20 �μ�",
                NVL(DECODE (dno, 30, SUM(salary)), 0) "30 �μ�",
                        SUM(salary) "�Ѿ�"
                        FROM employee 
                        GROUP BY job, dno 
                        ORDER BY dno;
                        
                        
SELECT MAX(salary), MIN(salary), AVG(salary) FROM employee;

SELECT MAX(salary), MIN(salary), AVG(salary) FROM employee WHERE job = 'CLERK';

SELECT * FROM employee ORDER BY dno;