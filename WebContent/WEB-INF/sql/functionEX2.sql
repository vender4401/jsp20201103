-- 특정 자릿수 반올림
SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 2) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;

-- 특정 자릿수 값 버림
SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, 2) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;

-- 두번째로 오는 파라미터 값을 나눈 나머지 값 반환
SELECT ename, salary, MOD(salary, 500) FROM employee;
SELECT MOD(135, 2) FROM dual;
SELECT MOD(135, 3) FROM dual;
SELECT MOD(31, 2) FROM dual;

SELECT SQRT(8) FROM dual;
