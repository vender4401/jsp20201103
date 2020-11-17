SELECT commission, NVL(commission, 0) FROM employee;

-- 그룹 함수 -- 
SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT MAX(salary) FROM employee;
SELECT MIN(salary) FROM employee;

-- 그룹함수중 칼럼의 값이 NULL 일 경우 생략됨 (집계되지 않음) -- 
SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

-- 사원들의 급여 총액, 평균액, 최고액, 최소액 출력하기 --
SELECT SUM(salary) "급여 총액", 
        AVG(salary) "급여 평균", 
        MAX(salary) "최대 급여", 
        MIN(salary) "최소 급여" 
        FROM employee;
        
-- 최근에 입사한 사원과 자장 오래전에 입사한 사원의 입사일 출력
SELECT MAX(hiredate) "가장 최근 사원", 
        MIN(hiredate) "가장 오래된 사원" 
        FROM employee;
        
-- 전체 사원의 수 구하기
SELECT COUNT(ename) FROM employee;
-- 커미션을 받는 사원수 구하기
SELECT COUNT(commission) FROM employee;
-- DISTINCT -- 직업 종류의 개수 출력 (중복되는 값 제거)
SELECT COUNT(DISTINCT job) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT ename FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);
        