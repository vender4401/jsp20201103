-- ��ü Į�� ���
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM salgrade;

-- ��ȣ,����� ���
SELECT eno, ename FROM employee;

-- ���� ���ϱ�
SELECT ename, salary, salary*12 FROM employee;

-- Ŀ�̼��� ���� ���� ���ϱ�
SELECT ename, salary*12 + NVL(commission, 0) FROM employee;

-- Į���� ��Ī ����
SELECT ename, salary*12 + NVL(commission, 0) �ѿ��� FROM employee;
SELECT ename, salary*12 + NVL(commission, 0) "�� �� ��" FROM employee;

-- �ߺ��� �����͸� �ѹ����� ���
SELECT distinct dno FROM employee;

INSERT INTO employee values (1235, 'yoonkwan', 'multi', 2222, '86/04/04', 350, '', 10);
SELECT * FROM employee where ename = 'wpms';
