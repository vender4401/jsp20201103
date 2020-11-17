SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission sum FROM employee;

-- NVL �Լ� -- (NULL���� �ι�° �Ķ������ ������ ��ȯ)
SELECT ename, commission, NVL(commission, 0) FROM employee;
SELECT  job, ename, salary, commission, NVL(commission, 0), salary * 12 + NVL(commission, 0) FROM employee ORDER BY job;
SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12) FROM employee ORDER BY job;

-- NULLIF �Լ� -- �ΰ��� ��u�ؼ� ������ NULL �ٸ��� ���� �������� �Ķ������ ���� ��ȯ 
SELECT NULLIF('a', 'a') FROM dual;
SELECT NULLIF('a', 'b') FROM dual;

-- COAKESCE �Լ� -- �Ķ���ͷ� ���� ���� NULL�� �ƴ� �� ��ȯ
SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, null, 'c') FROM dual;
SELECT COALESCE(null, null, null, null, 0) FROM dual;

-- DECODE �Լ� -- 
SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF') FROM employee;
SELECT ename, dno, DECODE(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERATIONS', 'DEFAULT')
AS NAME FROM employee ORDER BY dno;

-- CASE �Լ� --
SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                            WHEN salary >= 0 THEN 'LOW'
                            ELSE '0' 
                            END FROM employee;
SELECT ename, dno, CASE WHEN dno = 10 THEN 'ACCOUNTING'
                        WHEN dno = 20 THEN 'RESEARCH'
                        WHEN dno = 30 THEN 'SALES'
                        WHEN dno = 40 THEN 'OPERATIONS'
                        ELSE 'DEFAULT'
                        END AS DNAME
                        FROM employee ORDER BY dno;
                        
SELECT ename, salary * 12 + NVL(commission, 0) AS sal FROM employee WHERE eno = 7499;
SELECT ename, salary*12 + NVL(commission, 0) FROM employee;
