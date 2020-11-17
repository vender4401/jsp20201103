-- 1번 모든사원의 급여 최고액, 최저액, 총액 및 평균 급여를 출력 (평균에 대해서는 정수로 반올림)
SELECT MAX(salary) "최고 급여", 
        MIN(salary) "최저 급여", 
        ROUND(AVG(salary)) "평균 급여"
        FROM employee;
        
-- 2번 각 담당업무 유형별로 급여 최고액, 최저액, 총액 및 평균액 출력( 평균에 대해서는 정수로 반올림)
SELECT job, MAX(salary) "Max", 
            MIN(salary) "Min", 
            SUM(salary) "Sum", 
            ROUND(AVG(salary)) "Avg" 
            FROM employee GROUP BY job;
            
-- 3번 COUNT(*) 함수를 이용하여 담당 업무가 동일한 사원수를 출력
SELECT job, COUNT(*) FROM employee GROUP BY job;

-- 4번 관리자 수를 나열 
SELECT COUNT(manager) FROM employee;

-- 5번 급여 최고액, 급여 최저액의 차액을 출력
SELECT MAX(salary) - MIN(salary) "최고급여와 최저급여 차이" FROM employee;

-- 6번 직급별 사원의 최저 급여 출력.(관리자를 알수 없는 사원및최저 급여가 2000 미만인 그룹은 제외 결과를 급여에 대한 내림차순으로)
SELECT job, MIN(salary) FROM employee GROUP BY job HAVING NOT MIN(salary) < 2000 ORDER BY MIN (salary) DESC;

-- 7번 부서번호, 사원수 , 부서내의 모든 사원의 평균 급여를 출력 (평균 급여는 소수점 둘쨰 자리로 반올림)
-- ORDER BY 의 기본값은 오름차순이라 ASC를 넣지 않음
SELECT dno, COUNT(ename) "Number of Peaple", ROUND(AVG(salary)) FROM employee GROUP BY dno ORDER BY dno;

-- 8번 부서번호 이름, 지역명, 사원수, 부서내의 모든 사원의 평균 급여 출력
SELECT DECODE(dno, 10, 'ACCOUNTING',  
                    20, 'RESEARCH', 
                    30, 'SALES', 
                    40, 'OPERATIONS') "Dname", 
        DECODE(dno, 10, 'NEW YORK',  
                    20, 'DALLAS', 
                    30, 'CHICAGO', 
                    40, 'BOSTON') "Locarion", 
        COUNT(*) "Number People", ROUND(AVG(salary)) FROM employee GROUP BY dno;
        
-- 9번 업무를 표시한다음 해당업무에 대해 부서번호별 급여 및 부서 의 급여 총액을 각각 출력
SELECT job, dno, NVL(DECODE (dno, 10, SUM(salary)), 0) "10 부서", 
                NVL(DECODE (dno, 20, SUM(salary)), 0) "20 부서",
                NVL(DECODE (dno, 30, SUM(salary)), 0) "30 부서",
                        SUM(salary) "총액"
                        FROM employee 
                        GROUP BY job, dno 
                        ORDER BY dno;
                        
                        
SELECT MAX(salary), MIN(salary), AVG(salary) FROM employee;

SELECT MAX(salary), MIN(salary), AVG(salary) FROM employee WHERE job = 'CLERK';

SELECT * FROM employee ORDER BY dno;