-- 날짜를 문자로 바꾸는 함수 (형변환) TO_CHAR
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

-- 숫자를 문자로 바꾸는 함수 (형변환) TO_CHAR
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(867833, '999,999') FROM dual;
SELECT TO_CHAR(867833, '000,000,000') FROM dual;
-- 급여를 출력하면서 통화기호 덧붙이기
SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;

-- 문자를 날짜로 바꾸는 함수 (형변환) TO_DATE
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS'), 'YYYY-MM-DD HH:MI:SS') FROM dual;

-- 문자를 숫자로 바꾸는 함수 (형변환) TO_NUMBER
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;



