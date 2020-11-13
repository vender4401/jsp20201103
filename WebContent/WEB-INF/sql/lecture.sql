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

-- Ŀ�̼��� null �� ��� ã��
SELECT ename FROM employee WHERE commission IS NULL;

-- Ŀ�̼��� �ִ� ��� ã��
SELECT ename FROM employee WHERE commission IS NOT NULL;

-------------ORDER BY-----------------------
--���� ��������
SELECT * FROM employee ORDER BY salary;

--���� ��������
SELECT * FROM employee ORDER BY salary DESC;

--
SELECT * FROM employee ORDER BY salary, dno, ename;

