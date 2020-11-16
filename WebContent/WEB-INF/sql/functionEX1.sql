SELECT sysdate FROM dual;
SELECT * FROM employee;

-- ��ҹ��� ��ȯ �Լ� LOWER �ҹ��ڷ� ��ȯ / UPPER �빮�ڷ� ��ȯ
SELECT LOWER(ename) name FROM employee;
SELECT UPPER(ename) name FROM employee;

-- ù���ڸ� �빮�� �������� �ҹ���
SELECT INITCAP(ename) name FROM employee;
SELECT INITCAP('oracle mania') name FROM dual;

SELECT eno, ename, job FROM employee WHERE LOWER(ename) = 'scott';


-- ���� ���� Ȯ�� 
SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;

-- ������ ����Ʈ�� Ȯ��
SELECT ename, LENGTHB(ename) length FROM employee;
SELECT LENGTHB('�����α׷���') FROM dual;

SELECT LENGTH('OracleMania'), LENGTH('����Ŭ�ŴϾ�') FROM dual;
SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ�ŴϾ�') FROM dual;

-- ���� ���� �Լ�
-- ���� �� ���� CONCAT
SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ',' || job FROM employee;
SELECT 'Oracle', 'Mania', CONCAT('Oracle', 'Mania') FROM dual;

-- ���� �� ���� SUBSTR
SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;
SELECT SUBSTR('Oracle mania', 4, 3), SUBSTR('Oracle mania', -4, 3) FROM dual;
SELECT * FROM employee WHERE SUBSTR(ename, -1, 1) = 'N';
SELECT * FROM employee WHERE SUBSTR(hiredate, 1, 2) = '87';
SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4)= '1987';

-- ���� ã��
SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT ename, INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM employee;
SELECT INSTR('Oracle mania', 'a') FROM dual;

-- Ư����ȣ�� ä��� (����ä���)
SELECT LPAD(ename, 10, '%') FROM employee;
-- Ư����ȣ�� ä��� (������ä���)
SELECT RPAD(ename, 10, '%') FROM employee;

-- ���� ����, Ư�� ���� ����
-- ���� ���� �ϱ�
SELECT ' Oracle mania ', LTRIM('Oracle mania'), RTRIM('Oracle mania') FROM dual;
-- Ư�� �������� �ϱ�
SELECT 'Oracle mania', TRIM('O' FROM 'Oracle mania') FROM dual;