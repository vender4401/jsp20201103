-- 1�� euqi ������ ����Ͽ� SCOTT ����� �μ���ȣ�� �μ��̸� ���
SELECT e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.ename = 'SCOTT';

-- 2�� INNER JOIN�� ON�����ڸ� ����Ͽ� ����̸��� �Բ� �� ����� �Ҽӵ� �μ� �̸��� ������ ���
SELECT ename, dname, loc FROM employee e JOIN department d ON e.dno = d.dno;

-- 3�� INNER JOIN �� USING �����ڸ� ����Ͽ� 10�� �μ��� ���ϴ� ��� ��� ������ ���� ����� �μ��� ������ ���
SELECT dno, job, loc FROM employee JOIN department USING(dno) WHERE dno = 10;

-- 4�� NATURAL JOIN �� ����Ͽ� Ŀ�̼��� �޴� ��� ����� �̸�,�μ��̸�, ������ ���
SELECT ename, dno, loc, commission FROM employee NATURAL JOIN department WHERE commission > 0;

-- 5�� equi ���ΰ� wildCard�� ����Ͽ� �̸��� A�� ���Ե� ��� ����� �̸��� �μ��� ���
SELECT e.ename, d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.ename LIKE '%A%';

-- 6�� NATURAL JOIN �� ����Ͽ� NEW YORK�� �ٹ��ϴ� ��� ����� �̸�, ����, �μ����� ���
SELECT ename, job, dno, dname FROM employee NATURAL JOIN department WHERE loc = 'NEW YORK';

-- 7�� SELF JOIN �� ����Ͽ� ����� �̸��� ��� ��ȣ�� ������ �̸��� ������ ��ȣ�� �Բ� ���
SELECT emp.ename Employee, emp.manager Emp#, mgr.eno Manager, mgr.ename Mgr# 
    FROM employee emp, employee mgr
    WHERE emp.manager = mgr.eno;
    
-- 8�� OUTTER JOIN, SELF JOIN �� ����Ͽ� �����ڰ� ���� ����� �����Ͽ� �����ȣ�� �������� �������� �����Ͽ� ���
-- �����ڰ� ���� ����� �����Ͽ� �� ����� ������ �̸� ���
SELECT e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2 WHERE e1.manager = e2.eno(+) ORDER BY e1.eno;

-- 9�� SELF JOIN �� ����Ͽ� ������ ����� �̸�, �μ���ȣ, ������ ����� ������ �μ����� �ٹ��ϴ� ����� ���
-- ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
SELECT e1.ename, e1.dno, e2.ename FROM employee e1, employee e2 WHERE e1.dno = e2.dno AND e1.ename='SCOTT' AND e2.ename!='SCOTT';

-- 10�� SELF JOIN �� ����Ͽ� WARD ������� �ʰ� �Ի��� ����� �̸��� �Ի����� ���
SELECT e2.ename, e2.hiredate 
    FROM employee e1, employee e2 
    WHERE e2.hiredate > e1.hiredate 
    AND e1.ename='WARD' 
    ORDER BY hiredate;
    
-- 11�� SELF JOIN�� ����Ͽ� �����ں��� ���� �Ի��� ��� ����� �̸��� �Ի����� �������� �̸��� �Ի��ϰ� �Բ� ���
SELECT e2.ename, e2.hiredate, e1.ename, e1.hiredate
    FROM employee e1, employee e2 
    WHERE e2.manager = e1.eno 
    AND e2.hiredate < e1.hiredate;