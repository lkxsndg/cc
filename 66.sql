select sysdate from dual;
select current_timestamp from dual;
select * from emp;
select to_char(sysdate,'yyyy-mm-dd hh12:mi:ss') from dual;
select to_date('2020-1-18','yyyy-mm-dd') from dual;
select add_months(sysdate,2) from dual;
select last_day(sysdate) from dual;
select months_between( to_date('2020-1-18','yyyy-mm-dd'),sysdate)from dual;
select ename, floor(months_between(sysdate,hiredate)/12) from emp;

select power(3,3) from dual;

select mod(9,5)from dual;

select translate('asczxvzaxca','a','dd')from dual;

select decode(5,1,'a',2,'b',3,'c',4,'d',5,'e','o') from dual;
select decode(instr(dname,'S'),0,dname,'***')from dept;
select instr('abcdefg','b') from dual;
select rpad('tr02005',length('tr02005')+5,'*') from dual;
select length('156465')from dual;

select * from emp;
select lower(ename) as ename,ename from emp;
select lower( SUBSTR(ename,1,1)) ||upper(SUBSTR(ename,2,LENGTH(ename)-1)) as ename FROM EMP;
select SUBSTR(ename,1,3) from emp;
select SUBSTR(ename,length(ename)-2,3) from emp;
select rpad(ename,10,'*')from emp;
select instr('oracle training','ra',1,2) from dual;
select trim('   aadde gf  ') from dual;
select concat(concat(ename,'的工资是'),sal) from emp;
select replace(ename,'a','A') from emp;
select ename  from emp where instr(ename,'H')<>0;
select ename  from emp where instr(ename,'L')=2;
select ename  from emp where instr(ename,'T',length(ename))<>0;
select ename from emp where add_months(hiredate,1)>=sysdate;
select floor(sal/30),ename from emp;
select floor(months_between(sysdate,hiredate))from emp;
select ename,hiredate from emp where to_char(hiredate,'mm')=12;
select (sal+nvl(comm,0))*12 from emp
select ename,to_char(hiredate,'yy'),to_char(hiredate,'mm') from emp order by 2,3;
select hiredate,ename from emp where last_day(hiredate)-2=hiredate
select decode(GRADE,1,'一等',2,'二等',3,'三等',4,'四等',5,'五等',grade) as grade,losal,hisal as Grade from SALGRADE;
select * from SALGRADE;
