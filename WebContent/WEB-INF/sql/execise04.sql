--1번 SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력
SELECT * FROM employee;
SELECT SUBSTR(hiredate, 1, 2) 년, SUBSTR(hiredate, 4, 2) 달 FROM employee;

--2번 SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력
SELECT ename FROM employee WHERE SUBSTR(hiredate, 4, 2) = '04'; 

--3번 MOD함수를 사용하여 사원번호가 짝수인 사람만 출력
SELECT ename FROM employee WHERE MOD(eno, 2) = '0';

--4번 입사일의 연도는 2자리(YY), 월은 숫자(MON) 로 표시하고 요일은 약어(DY)로 지정하여 출력
SELECT hiredate, TO_CHAR(hiredate, 'YY-MON-DD DAY') FROM employee;

--5번 올해 며칠이 지났는지 출력
SELECT TRUNC(sysdate - TO_DATE('2020/01/01', 'YYYY/MM/DD')) FROM dual;

--6번 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL 값 대신 0으로 출력
SELECT eno, ename, NVL(manager, 0) MANAGER FROM employee;

--7번 DECODE 함수로 직급에 따라 급연인상.
--직급이 ANAIYST 200, SALESMAN 180, MANAGER 150, CLERK 100 인상
SELECT eno, sal FROM
(SELECT job, eno, ename, salary, NVL(commission, 0), DECODE (JOB, 'ANAIYST', salary+200, 
                                                                'SALESMAN', salary+180, 
                                                                'MANAGER', salary+150, 
                                                                'CLERK', salary+100, 
                                                                salary) sal  
                                                                FROM employee ORDER BY ename);
                                                            
