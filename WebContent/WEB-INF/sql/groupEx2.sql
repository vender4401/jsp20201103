SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job;

-- �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ���
SELECT dno "�μ� ��ȣ", AVG(salary) "��� �޿�" FROM employee GROUP BY dno;

-- �Ҽ� �μ��� ��� �޿� ���ϱ�
SELECT AVG(salary) "�޿� ���" FROM employee GROUP BY dno;

-- ���� Į���� �̿��Ͽ� �׷캰�� �˻�
SELECT dno, job, COUNT(*), SUM(salary) FROM employee GROUP BY dno, job ORDER BY dno, job;

-- �׷��Լ��� WHERE ���� ��� �Ұ� --
-- SELECT job, AVG(salary) FROM employee WHERE AVG(salary >= 3000) GROUP BY job; <--  x
SELECT job, AVG(salary) FROM employee GROUP BY job HAVING AVG(salary) >= 3000;




