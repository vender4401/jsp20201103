SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee GROUP BY job;

-- 소속 부서별 평균 급여를 부서번호와 함께 출력
SELECT dno "부서 번호", AVG(salary) "평균 급여" FROM employee GROUP BY dno;

-- 소속 부서별 평균 급여 구하기
SELECT AVG(salary) "급여 평균" FROM employee GROUP BY dno;

-- 다중 칼럼을 이용하여 그룹별로 검색
SELECT dno, job, COUNT(*), SUM(salary) FROM employee GROUP BY dno, job ORDER BY dno, job;

-- 그룹함수는 WHERE 에서 사용 불가 --
-- SELECT job, AVG(salary) FROM employee WHERE AVG(salary >= 3000) GROUP BY job; <--  x
SELECT job, AVG(salary) FROM employee GROUP BY job HAVING AVG(salary) >= 3000;




