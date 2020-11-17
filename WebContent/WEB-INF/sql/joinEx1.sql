--16�� ��, 8�� ��(Į��)
SELECT * FROM employee;
-- 4�� ��, 8�� ��(Į��)
SELECT * FROM department;

-- �ΰ��̻��� ���̺� ���� (����JOIN)
SELECT * FROM employee, department;
-- equi JOIN (WHERE���� ����Į��(=equal)�� ���ϴ°�)
SELECT * FROM employee, department WHERE employee.dno = department.dno;
-- ���̺��� ��Ī���� �����ϰ� ��Ī�� ����Ҽ� �ִ�
SELECT * FROM employee e, department d WHERE e.dno = d.dno;
SELECT e.eno, e.ename, e.dno, d.dno FROM employee e, department d WHERE e.dno = d.dno;

-- ���̺�� ��Ī ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno FROM employee e, department d WHERE e.dno = d.dno AND e.eno = 7788;

-- ���� �ٸ� ���̺������� ���� �̸��� Į���� ��� �����ϱ�
SELECT eno, ename, dno, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department
    WHERE eno = 7369 AND employee.dno = department.dno;
    
-- �� ������� �Ҽӵ� �μ� ���� ���
SELECT * FROM employee, department WHERE employee.dno = department.dno;

-- �����ȣ, ����̸�, �ҼӺμ� �̸� ���
SELECT eno, ename, dname FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;

-- Į���� �տ� ���̺�� ����ϱ�
SELECT employee.eno, employee.ename, department.dname, department.dno
    FROM employee, department WHERE employee.dno = department.dno AND employee.eno=7788;
    
SELECT d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.eno = 7782;
SELECT * FROM department;

-- JOIN Į���� ���̺� ��Ī�� ������� ���� ��
SELECT e.eno, e.ename, d.dname, dno FROM employee e NATURAL JOIN department d WHERE e.eno = 7788;

-- NATURAL JOIN (�� �ٸ� ���̺� ���� Į������ �������)
SELECT * FROM employee NATURAL JOIN department;
SELECT * FROM employee NATURAL JOIN department WHERE eno = 7782;

SELECT * FROM employee;

-- JOIN USING (�� �ٸ� ���̺� ���� Į������ ���� ��쿡��, NATURAL JOIN �� ����..?)
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno) WHERE eno = 7782;

-- USING �� ����ϱ�
SELECT e.eno, e.ename, d.dname, dno FROM employee e JOIN department d USING(dno) WHERE e.eno = 7788;

-- JOIN ON (�� �ٸ� ���̺��� �ٸ� Į������ �־ ����� ����)
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno WHERE eno = 7788;

-- ON�� ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno FROM employee e JOIN department d ON e.dno = d.dno WHERE e.eno = 7788;