SELECT * FROM employee;
SELECT * FROM department;

SELECT dno, dname, loc FROM department WHERE dno =10;
-- 1번
SELECT ename 이름, salary "2020년 급여", salary + 300 "2021년 급여(상승됨)" FROM employee;

-- 2번 총 수입순 으로 출력하기 
SELECT ename, salary, salary * 12 + 100 FROM employee ORDER BY salary * 12 + 100 desc;

-- 3번 급여순 으로 출력 하기
SELECT ename, salary FROM employee WHERE salary > 2000 ORDER BY salary desc;

-- 4번 사원번호가 7788인 사원의 이름과 부서번호를 출력하기
SELECT ename, dno FROM employee WHERE eno = 7788;

-- 5번 급여가 2000에서 3000사이에 포함되지 않는 사원 출력하기
SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

-- 6번 1981년 2월 20일부터 1981년 5월 1일 사이에 입사한 사원 출력하기
SELECT ename, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 7번 부서 20및 30에 속한 사원 출력하기
SELECT ename, dno FROM employee WHERE dno IN (20, 30);

-- 8번 급여가 2000에서 3000사이에 포함되고 부서번호가 20 또는 30인 사원 출력하기
SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 AND dno IN (20, 30);

-- 9번 1981년도에 입사한 직원 찾기
SELECT ename FROM employee WHERE hiredate BETWEEN '1981/01/01' AND '1981/12/31';
SELECT ename FROM employee WHERE hiredate LIKE '81%';

-- 10번 관리자가 없는 사원의 이름과 담당 업무를 출력
SELECT ename, job FROM employee WHERE manager IS NULL;

-- 11번 커미션을 받을수 있는 자격이 되는 사원 출력(자격이되는 사원이름, 급여,커미션 출력 하고 급여및 커미션 기준을 내림차순 정렬)
SELECT ename, salary, commission FROM employee WHERE commission IS NOT NULL ORDER BY salary DESC, commission DESC;

-- 12번 이름의 세번째 문자가 R인 사원의 이름을 출력
SELECT ename FROM employee WHERE ename LIKE '__R%';

-- 13번 이름에 A와 E를 모두 포함하고 있는 사원이 이름 출력
SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

-- 14번 담당 업무가 사무원(CLERK) 또는 영업사원(SALESMAN)이면서 급여가 $1600, $950 또는 $1300 이 아닌 
-- 사원의 이름, 담당업무, 급여를 출력
SELECT ename, job, salary FROM employee WHERE job IN ('CLERK', 'SALESMAN') AND salary NOT IN (1600, 950, 1300);

-- 15번 커미션이 $500 이상인 사원의 이름과 급여 및 커미션 출력
SELECT ename, salary, commission FROM employee WHERE commission >= 500;