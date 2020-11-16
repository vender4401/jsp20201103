-- ���� ��¥ ǥ���ϱ�
SELECT sysdate FROM dual;

-- ��¥ ����ϱ�
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

-- �ٹ��ϼ� ����ϱ�
SELECT ename, hiredate, sysdate - hiredate FROM employee;
-- �ݿø��ϱ� 
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT hiredate, ROUND(hiredate, 'MONTH') FROM employee;

-- 2��° �Ķ���� ���������� ������
SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

-- ��¥�� ��¥ ������ �������� ���ϴ� �Լ� (MONTHS_BETWEEN)
SELECT MONTHS_BETWEEN(sysdate, hiredate) FROM employee;
SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd')) FROM dual;
SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (sysdate, hiredate)) FROM employee;

-- Ư�� �������� ���ϱ�
SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;
SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

-- ���� ��¥���� ������ ���Ͽ� �ش��ϴ� ��¥ ã��
SELECT NEXT_DAY(sysdate, '�����') FROM dual;
SELECT NEXT_DAY(sysdate, '�ݿ���') FROM dual;
SELECT NEXT_DAY(sysdate, '��') FROM dual;
SELECT NEXT_DAY(sysdate, '��') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;
-- �Ի��� ���� ������ �� ���ϱ�
SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;





