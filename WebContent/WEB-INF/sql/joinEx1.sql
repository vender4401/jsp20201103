--16개 행, 8개 열(칼럼)
SELECT * FROM employee;
-- 4개 행, 8개 열(칼럼)
SELECT * FROM department;

-- 두개이상의 테이블 연결 (조인JOIN)
SELECT * FROM employee, department;
-- equi JOIN (WHERE절에 공통칼럼(=equal)을 비교하는것)
SELECT * FROM employee, department WHERE employee.dno = department.dno;
-- 테이블을 별칭으로 설정하고 별칭을 사용할수 있다
SELECT * FROM employee e, department d WHERE e.dno = d.dno;
SELECT e.eno, e.ename, e.dno, d.dno FROM employee e, department d WHERE e.dno = d.dno;

-- 테이블명에 별칭 사용하기
SELECT e.eno, e.ename, d.dname, e.dno FROM employee e, department d WHERE e.dno = d.dno AND e.eno = 7788;

-- 각각 다른 테이블이지만 같은 이름의 칼럼의 경우 설정하기
SELECT eno, ename, dno, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department
    WHERE eno = 7369 AND employee.dno = department.dno;
    
-- 각 사원들이 소속된 부서 정보 얻기
SELECT * FROM employee, department WHERE employee.dno = department.dno;

-- 사원번호, 사원이름, 소속부서 이름 출력
SELECT eno, ename, dname FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;

-- 칼럼명 앞에 테이블명 명시하기
SELECT employee.eno, employee.ename, department.dname, department.dno
    FROM employee, department WHERE employee.dno = department.dno AND employee.eno=7788;
    
SELECT d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.eno = 7782;
SELECT * FROM department;

-- JOIN 칼럼에 테이블 별칭을 사용하지 않은 예
SELECT e.eno, e.ename, d.dname, dno FROM employee e NATURAL JOIN department d WHERE e.eno = 7788;

-- NATURAL JOIN (각 다른 테이블에 같은 칼럼명이 있을경우)
SELECT * FROM employee NATURAL JOIN department;
SELECT * FROM employee NATURAL JOIN department WHERE eno = 7782;

SELECT * FROM employee;

-- JOIN USING (각 다른 테이블에 같은 칼럼명이 있을 경우에만, NATURAL JOIN 과 같은..?)
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno) WHERE eno = 7782;

-- USING 절 사용하기
SELECT e.eno, e.ename, d.dname, dno FROM employee e JOIN department d USING(dno) WHERE e.eno = 7788;

-- JOIN ON (각 다른 테이블에도 다른 칼럼명이 있어도 사용이 가능)
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;
SELECT * FROM employee e JOIN department d ON e.dno = d.dno WHERE eno = 7788;

-- ON절 사용하기
SELECT e.eno, e.ename, d.dname, e.dno FROM employee e JOIN department d ON e.dno = d.dno WHERE e.eno = 7788;