-- 전체 칼럼 출력
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM salgrade;

-- 번호,사원명 출력
SELECT eno, ename FROM employee;

-- 연봉 구하기
SELECT ename, salary, salary*12 FROM employee;

-- 커미션을 더한 연봉 구하기
SELECT ename, salary*12 + NVL(commission, 0) FROM employee;

-- 칼럼에 별칭 짓기
SELECT ename, salary*12 + NVL(commission, 0) 총연봉 FROM employee;
SELECT ename, salary*12 + NVL(commission, 0) "총 연 봉" FROM employee;

-- 중복된 데이터를 한번씩만 출력
SELECT distinct dno FROM employee;

INSERT INTO employee values (1235, 'yoonkwan', 'multi', 2222, '86/04/04', 350, '', 10);
SELECT * FROM employee where ename = 'wpms';
