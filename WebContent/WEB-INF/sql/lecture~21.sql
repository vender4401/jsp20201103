SELECT * FROM employee;

-- 급여가 1500 이상인 사원 출력 하기
SELECT * FROM employee WHERE salary >= 1500;

-- 10번 부서 소속 사원 출력하기
SELECT * FROM employee WHERE dno = 10;

-- 문자 데이터 조회
SELECT * FROM employee WHERE ename = 'SCOTT';

-- 날자 데이터 조회 (입사일 1981/01/01) 이전인 사원만 출력하기
SELECT * FROM employee WHERE hiredate <= '1981/01/01';

-- 부서번호가 10이고 직급이 MANAGER인 사원만 출력하기
SELECT * FROM employee WHERE dno = 10 AND job = 'MANAGER';

-- 부서번호가 10이거나 직급이 MANAGER인 사원만 출력하기
SELECT * FROM employee WHERE dno = 10 OR job = 'MANAGER';

-- NOT을 이용한 조건 지정하기
SELECT * FROM employee WHERE NOT dno = 10;
-- <>를 이용한 조건 지정하기
SELECT * FROM employee WHERE dno <> 10;

-- 급여가 1000에서 1500사이인 사원 출력하기
SELECT * FROM employee WHERE salary >= 1000 AND salary <=1500;

-- 급여가 1000 미만이거나 1500 초과인 사원 출력하기
SELECT * FROM employee WHERE salary < 1000 OR salary > 1500;

-- 커미션이 300이거나 500이거나 1400인 사원 출력하기
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;

--------------------BET WEEN---------------
-- BETWEEN AND 연산자 사용하기 (급여가 1000에서 1500사이의 사원 출력하기)
SELECT * FROM employee WHERE salary BETWEEN 1000 AND 1500;

-- NOT BETWEEN AND 연산자 사용하기 (급여가 1000미만이거나 1500 초과 사원 출력하기)
SELECT * FROM employee WHERE salary NOT BETWEEN 1000 AND 1500;

-- 1982년에 입사한 사원 출력하기
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

--------------------IN---------------
-- 커미션이 300이거나 500이거나 1400인 사원 출력하기
SELECT * FROM employee WHERE commission IN (300,500,1400);

--커미션이 300, 500, 1400이 아닌 사원 출력하기
SELECT * FROM employee WHERE commission NOT IN (300,500,1400);