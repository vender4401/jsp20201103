-- 현재 날짜 표시하기
SELECT sysdate FROM dual;

-- 날짜 계산하기
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

-- 근무일수 계산하기
SELECT ename, hiredate, sysdate - hiredate FROM employee;
-- 반올림하기 
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT hiredate, ROUND(hiredate, 'MONTH') FROM employee;

-- 2번째 파라미터 값기준으로 버리기
SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

-- 날짜와 날짜 사이의 개월수를 구하는 함수 (MONTHS_BETWEEN)
SELECT MONTHS_BETWEEN(sysdate, hiredate) FROM employee;
SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd')) FROM dual;
SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (sysdate, hiredate)) FROM employee;

-- 특정 개월수를 더하기
SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;
SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

-- 이후 날짜에서 지정한 요일에 해당하는 날짜 찾기
SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금') FROM dual;
SELECT NEXT_DAY(sysdate, '월') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;
-- 입사한 달의 마지막 달 구하기
SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;





