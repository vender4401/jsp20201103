-- ��¥�� ���ڷ� �ٲٴ� �Լ� (����ȯ) TO_CHAR
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- ���ڸ� ���ڷ� �ٲٴ� �Լ� (����ȯ) TO_CHAR
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(867833, '999,999') FROM dual;
SELECT TO_CHAR(867833, '000,000,000') FROM dual;
-- �޿��� ����ϸ鼭 ��ȭ��ȣ �����̱�
SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;

-- ���ڸ� ��¥�� �ٲٴ� �Լ� (����ȯ) TO_DATE
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS'), 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- ���ڸ� ���ڷ� �ٲٴ� �Լ� (����ȯ) TO_NUMBER
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;



