-- Ư�� �ڸ��� �ݿø�
SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 2) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;

-- Ư�� �ڸ��� �� ����
SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, 2) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;

-- �ι�°�� ���� �Ķ���� ���� ���� ������ �� ��ȯ
SELECT ename, salary, MOD(salary, 500) FROM employee;
SELECT MOD(135, 2) FROM dual;
SELECT MOD(135, 3) FROM dual;
SELECT MOD(31, 2) FROM dual;

SELECT SQRT(8) FROM dual;
