SELECT * FROM emp;

SELECT empno, ename, deptno FROM emp;
SELECT empno, deptno FROM emp;
SELECT deptno FROM emp;

SELECT 
	sal,
	ename,
	123,
	'문자eng123'
FROM emp;

SELECT DISTINCT deptno FROM emp;
SELECT DISTINCT job FROM emp;

SELECT ename, sal, sal*12+comm, comm FROM emp;
SELECT ename, sal, sal*12+comm AS ANNSAL, comm FROM emp;
SELECT ename, sal, sal*12+comm AS "ANN SAL", comm FROM emp;
SELECT ename, sal, sal*12+comm ANNSAL, comm FROM emp;
SELECT ename name FROM emp;
SELECT ename AS name FROM emp;
SELECT ename AS 이름 FROM emp;

SELECT * FROM EMP 
ORDER BY sal;

SELECT * FROM EMP
ORDER BY sal ASC;

SELECT * FROM EMP
ORDER BY sal DESC;

SELECT * FROM emp
ORDER BY empno DESC;

SELECT * FROM emp
ORDER BY deptno, sal, empno;

SELECT * FROM emp
ORDER BY deptno ASC, sal desc, empno;

SELECT DISTINCT job FROM EMP;

SELECT empno AS EMPLOYEE_NO, ename EMPLOYEE_NAME FROM emp
ORDER BY deptno DESC, ename asc;

SELECT * 
	FROM EMP
WHERE deptno = 30;

SELECT * 
	FROM EMP
WHERE deptno = 30
	AND job = 'SALESMAN';

SELECT * 
	FROM EMP
WHERE empno = 7499
	AND deptno = 30;

SELECT * 
	FROM EMP
WHERE mgr = 7839
	AND deptno = 20;

SELECT * 
	FROM EMP
WHERE deptno = 30
	or job = 'CLERK';

SELECT *
	FROM EMP
WHERE 
	deptno = 30
	OR deptno = 20
	AND job = 'CLERK';

SELECT *
	FROM EMP
WHERE 
	(deptno = 30
	OR deptno = 20)
	AND job = 'CLERK';

-- 한줄 주석
/*
	범위 주석
*/

SELECT * 
	FROM EMP
WHERE sal * 12 = 36000;

SELECT * 
	FROM EMP
WHERE sal >= 3000;

SELECT * 
	FROM EMP
WHERE sal >= 2500
	AND job = 'ANALYST';

SELECT *
	FROM EMP
WHERE sal != 3000;

SELECT *
	FROM EMP
WHERE sal <> 3000;

SELECT * 
	FROM EMP
WHERE NOT sal = 3000;

SELECT * 
	FROM EMP
WHERE NOT sal <= 3000;

-- ctrl + / 주석처리 단축키

-- 문제1 급여가 1500 이상이고 3000 미만인 사원을 출력
SELECT * 
	FROM EMP
WHERE sal >= 1500
	AND sal < 3000;

-- 문제2 job이 CLERK 이거나 급여가 2000 초과 이면서 부서번호 10번인 사원 출력
SELECT *
	FROM EMP
WHERE job = 'CLERK'
	OR sal > 2000
	AND deptno = 10;

-- 문제2 괄호 연습
SELECT *
	FROM EMP
WHERE (job = 'CLERK'
	OR sal > 2000)
	AND deptno = 10;

SELECT *
	FROM EMP
WHERE job = 'CLERK'
	AND (sal > 2000
	OR deptno = 10);

-- 문제3 deptno가 10 또는 20인 모든 사원
SELECT *
	FROM EMP
WHERE deptno = 10
	OR deptno = 20;

-- 문제4 부서번호가 20또는 30인 사원 중에서 급여가 2000~3000 사이(포함)인 사람의
-- 연봉이 작은 순으로 출력. 단, 연봉이 같은 경우 이름이 빠른 순으로 정렬하여 출력
SELECT * 
	FROM EMP
WHERE (deptno = 20
	OR deptno = 30)
	AND sal >= 2000
	AND sal <= 3000
ORDER BY sal, ename;

SELECT *
	FROM EMP
WHERE job IN ('MANAGER', 'SALESMAN', 'CLERK');

SELECT *
	FROM EMP
WHERE deptno IN (10, 20);

SELECT *
	FROM EMP
WHERE deptno NOT IN (10, 20);

SELECT *
	FROM EMP
WHERE sal BETWEEN 2000 AND 3000; /* 이상 이하만 표현*/

SELECT *
	FROM EMP
WHERE sal NOT BETWEEN 2000 AND 3000;

--2000 이상이고 3000 이하 
--2000 >= sal and sal <= 3000
--2000 미만이거나 3000 초과
--NOT (2000 >= sal and sal <= 3000)
--2000 < sal OR sal > 3000

SELECT *
	FROM EMP
WHERE (sal BETWEEN 2000 AND 3000)
	AND deptno = 30;

SELECT *
	FROM EMP
WHERE ename LIKE 'S%';

SELECT *
	FROM EMP
WHERE ename LIKE '%N';

SELECT *
	FROM EMP
WHERE ename LIKE '_L%';

SELECT *
	FROM EMP
WHERE ename LIKE '_____';

SELECT *
	FROM EMP
WHERE ename LIKE '%';

SELECT *
	FROM EMP
WHERE ename LIKE '%AM%';

SELECT *
	FROM EMP
WHERE ename NOT LIKE '%AM%';

SELECT *
	FROM EMP
WHERE ename LIKE 'S%'
	OR ename LIKE '%AM%';

SELECT *
	FROM EMP
WHERE ename LIKE '%A%S%';

SELECT comm FROM EMP;

SELECT *
	FROM EMP
WHERE comm = NULL;

SELECT *
	FROM EMP
WHERE comm IS NULL;

SELECT *
	FROM EMP
WHERE comm IS NOT NULL;

SELECT *
	FROM EMP
WHERE mgr IS NOT NULL;

-- 복습
SELECT * FROM EMP
ORDER BY ename;

SELECT ename name, job, sal money, sal*12+comm AS "H A P P Y"
	FROM EMP
WHERE (mgr IS NOT NULL
	OR comm IS NOT NULL)
	AND job IN ('CLERK', 'MANAGER', 'SALESMAN')
	AND sal BETWEEN 900 AND 2700
	AND ename LIKE '%A%'
	AND NOT ename LIKE 'J%'
	OR job = 'PRESIDENT'
ORDER BY sal desc, ename ASC;

SELECT ename 
	FROM EMP
WHERE ename BETWEEN 'ALLEN' AND 'King'
ORDER BY ename;

SELECT DISTINCT job FROM emp
ORDER BY job;

SELECT * FROM EMP
WHERE deptno = 10;  -- 3명
SELECT * FROM EMP
WHERE deptno = 20;  -- 5명

SELECT * FROM EMP
WHERE deptno = 10
UNION 
SELECT * FROM EMP
WHERE deptno = 20;

SELECT empno, ename, sal, deptno 
	FROM EMP
WHERE deptno = 10
UNION
SELECT sal, job, deptno, sal 
	FROM EMP
WHERE deptno = 20;

SELECT empno, ename, sal, deptno
	FROM emp
WHERE deptno = 10
UNION
SELECT empno, ename, sal, deptno
	FROM emp
WHERE deptno = 10;

SELECT empno, ename, sal, deptno
	FROM emp
WHERE deptno = 10
UNION ALL
SELECT empno, ename, sal, deptno
	FROM emp
WHERE deptno = 10;

-- 되새김 문제

-- 문제1
SELECT * FROM emp
WHERE ename LIKE '%S';

-- 문제2
SELECT empno, ename, job, sal, deptno
	FROM EMP
WHERE deptno = 30
	AND job = 'SALESMAN';

-- 문제3

-- 집합 연산자 사용
SELECT empno, ename, job, sal, deptno
	FROM EMP
WHERE deptno IN (20, 30)
	AND sal > 2000;

-- 집합연산자 사용 안함
SELECT empno, ename, job, sal, deptno
	FROM EMP
WHERE deptno = 20
	AND sal > 2000
UNION ALL
SELECT empno, ename, job, sal, deptno
	FROM EMP
WHERE deptno = 30
	AND sal > 2000;

-- 문제4
SELECT * FROM EMP
WHERE NOT (2000 <= sal AND sal <= 3000);

-- 문제5
SELECT ename, empno, sal, deptno
	FROM EMP
WHERE ename LIKE '%E%'
	AND deptno = 30
	AND sal NOT BETWEEN 1000 AND 2000;

-- 문제6
SELECT * FROM EMP
WHERE comm IS NULL
	AND mgr IS NOT NULL
	AND job IN ('MANAGER', 'CLERK')
	AND ename NOT LIKE '_L%';

