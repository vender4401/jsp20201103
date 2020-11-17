--1�� SUBSTR �Լ��� ����Ͽ� ������� �Ի��� �⵵�� �Ի��� �޸� ���
SELECT * FROM employee;
SELECT SUBSTR(hiredate, 1, 2) ��, SUBSTR(hiredate, 4, 2) �� FROM employee;

--2�� SUBSTR �Լ��� ����Ͽ� 4���� �Ի��� ����� ���
SELECT ename FROM employee WHERE SUBSTR(hiredate, 4, 2) = '04'; 

--3�� MOD�Լ��� ����Ͽ� �����ȣ�� ¦���� ����� ���
SELECT ename FROM employee WHERE MOD(eno, 2) = '0';

--4�� �Ի����� ������ 2�ڸ�(YY), ���� ����(MON) �� ǥ���ϰ� ������ ���(DY)�� �����Ͽ� ���
SELECT hiredate, TO_CHAR(hiredate, 'YY-MON-DD DAY') FROM employee;

--5�� ���� ��ĥ�� �������� ���
SELECT TRUNC(sysdate - TO_DATE('2020/01/01', 'YYYY/MM/DD')) FROM dual;

--6�� ������� ��� ����� ����ϵ� ����� ���� ����� ���ؼ��� NULL �� ��� 0���� ���
SELECT eno, ename, NVL(manager, 0) MANAGER FROM employee;

--7�� DECODE �Լ��� ���޿� ���� �޿��λ�.
--������ ANAIYST 200, SALESMAN 180, MANAGER 150, CLERK 100 �λ�
SELECT eno, sal FROM
(SELECT job, eno, ename, salary, NVL(commission, 0), DECODE (JOB, 'ANAIYST', salary+200, 
                                                                'SALESMAN', salary+180, 
                                                                'MANAGER', salary+150, 
                                                                'CLERK', salary+100, 
                                                                salary) sal  
                                                                FROM employee ORDER BY ename);
                                                            
