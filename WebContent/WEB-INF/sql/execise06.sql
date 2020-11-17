-- 1번 euqi 조인을 사용하여 SCOTT 사원의 부서번호와 부서이름 출력
SELECT e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.ename = 'SCOTT';

-- 2번 INNER JOIN과 ON연산자를 사용하여 사원이름과 함께 그 사원이 소속된 부서 이름과 지역명 출력
SELECT ename, dname, loc FROM employee e JOIN department d ON e.dno = d.dno;

-- 3번 INNER JOIN 과 USING 연산자를 사용하여 10번 부서에 속하는 모든 담당 업무의 고유 목록을 부서의 지역명 출력
SELECT dno, job, loc FROM employee JOIN department USING(dno) WHERE dno = 10;

-- 4번 NATURAL JOIN 을 사용하여 커미션을 받는 모든 사원의 이름,부서이름, 지역명 출력
SELECT ename, dno, loc, commission FROM employee NATURAL JOIN department WHERE commission > 0;

-- 5번 equi 조인과 wildCard를 사용하여 이름에 A가 포함된 모든 사원의 이름과 부서명 출력
SELECT e.ename, d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.ename LIKE '%A%';

-- 6번 NATURAL JOIN 을 사용하여 NEW YORK에 근무하는 모든 사원의 이름, 업무, 부서명을 출력
SELECT ename, job, dno, dname FROM employee NATURAL JOIN department WHERE loc = 'NEW YORK';

-- 7번 SELF JOIN 을 사용하여 사원의 이름및 사원 번호를 관리자 이름및 관리자 번호와 함께 출력
SELECT emp.ename Employee, emp.manager Emp#, mgr.eno Manager, mgr.ename Mgr# 
    FROM employee emp, employee mgr
    WHERE emp.manager = mgr.eno;
    
-- 8번 OUTTER JOIN, SELF JOIN 을 사용하여 관리자가 없는 사원을 포함하여 사원번호를 기준으로 내림차순 정렬하여 출력
-- 관리자가 없는 사원을 포함하여 각 사원의 관리자 이름 출력
SELECT e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2 WHERE e1.manager = e2.eno(+) ORDER BY e1.eno;

-- 9번 SELF JOIN 을 사용하여 지정한 사원의 이름, 부서번호, 지정한 사원과 동일한 부서에서 근무하는 사원을 출력
-- 동일한 부서에서 근무하는 사원 출력하기
SELECT e1.ename, e1.dno, e2.ename FROM employee e1, employee e2 WHERE e1.dno = e2.dno AND e1.ename='SCOTT' AND e2.ename!='SCOTT';

-- 10번 SELF JOIN 을 사용하여 WARD 사원보다 늦게 입사한 사원의 이름과 입사일을 출력
SELECT e2.ename, e2.hiredate 
    FROM employee e1, employee e2 
    WHERE e2.hiredate > e1.hiredate 
    AND e1.ename='WARD' 
    ORDER BY hiredate;
    
-- 11번 SELF JOIN을 사용하여 관리자보다 먼저 입사한 모든 사원의 이름및 입사일을 관리자의 이름및 입사일과 함께 출력
SELECT e2.ename, e2.hiredate, e1.ename, e1.hiredate
    FROM employee e1, employee e2 
    WHERE e2.manager = e1.eno 
    AND e2.hiredate < e1.hiredate;