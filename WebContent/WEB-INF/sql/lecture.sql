SELECT * FROM employee;

------------------LIKE 
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE ename LiKE 'S%';
SELECT * FROM employee WHERE ename LiKE '%D';
SELECT * FROM employee WHERE ename LiKE '%A%';
SELECT * FROM employee WHERE ename LiKE 'A____';
SELECT * FROM employee WHERE ename LiKE '_A%';

SELECT * FROM employee WHERE eno LiKE '__4_';
SELECT * FROM employee WHERE eno LiKE '_4__';


SELECT ename FROM employee WHERE ename LIKE '%A%';

SELECT ename FROM employee WHERE commission IS NOT NULL;
SELECT ename FROM employee WHERE commission IS NULL;

-- 커미션이 null 인 사원 찾기
SELECT ename FROM employee WHERE commission IS NULL;

-- 커미션이 있는 사원 찾기
SELECT ename FROM employee WHERE commission IS NOT NULL;

-------------ORDER BY-----------------------
--월급 오름차순
SELECT * FROM employee ORDER BY salary;

--월급 내림차순
SELECT * FROM employee ORDER BY salary DESC;

--
SELECT * FROM employee ORDER BY salary, dno, ename;

