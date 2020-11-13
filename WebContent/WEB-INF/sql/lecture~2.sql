SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary, salary/100 FROM employee;
SELECT ename, salary, salary+100 FROM employee;
SELECT ename, salary, salary-100 FROM employee;

SELECT ename, salary, salary*12 연봉 FROM employee;

-- 한줄 주석
/*
여러줄 주석
*/

SELECT * FROM employee;
SELECT ename, salary, commission, salary+commission 총급여 FROM employee;
select ename, salary, commission, NVL(commission, 0) FROM employee;
select ename, salary, commission, NVL(commission, 0) FROM employee;
select ename, salary + NVL(commission, 0) 총급여 FROM employee;