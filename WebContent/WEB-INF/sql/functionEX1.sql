SELECT sysdate FROM dual;
SELECT * FROM employee;

-- 대소문자 변환 함수 LOWER 소문자로 변환 / UPPER 대문자로 변환
SELECT LOWER(ename) name FROM employee;
SELECT UPPER(ename) name FROM employee;

-- 첫글자만 대문자 나머지는 소문자
SELECT INITCAP(ename) name FROM employee;
SELECT INITCAP('oracle mania') name FROM dual;

SELECT eno, ename, job FROM employee WHERE LOWER(ename) = 'scott';


-- 문자 길이 확인 
SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;

-- 문자의 바이트수 확인
SELECT ename, LENGTHB(ename) length FROM employee;
SELECT LENGTHB('웹프로그래밍') FROM dual;

SELECT LENGTH('OracleMania'), LENGTH('오라클매니아') FROM dual;
SELECT LENGTHB('OracleMania'), LENGTHB('오라클매니아') FROM dual;

-- 문자 조작 함수
-- 문자 값 연결 CONCAT
SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ',' || job FROM employee;
SELECT 'Oracle', 'Mania', CONCAT('Oracle', 'Mania') FROM dual;

-- 문자 열 추출 SUBSTR
SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;
SELECT SUBSTR('Oracle mania', 4, 3), SUBSTR('Oracle mania', -4, 3) FROM dual;
SELECT * FROM employee WHERE SUBSTR(ename, -1, 1) = 'N';
SELECT * FROM employee WHERE SUBSTR(hiredate, 1, 2) = '87';
SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4)= '1987';

-- 문자 찾기
SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT ename, INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM employee;
SELECT INSTR('Oracle mania', 'a') FROM dual;

-- 특정기호로 채우기 (왼쪽채우기)
SELECT LPAD(ename, 10, '%') FROM employee;
-- 특정기호로 채우기 (오른쪽채우기)
SELECT RPAD(ename, 10, '%') FROM employee;

-- 공백 제거, 특정 문자 제거
-- 공백 제거 하기
SELECT ' Oracle mania ', LTRIM('Oracle mania'), RTRIM('Oracle mania') FROM dual;
-- 특정 문자제거 하기
SELECT 'Oracle mania', TRIM('O' FROM 'Oracle mania') FROM dual;