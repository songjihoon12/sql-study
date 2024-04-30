
--where 조건절
--조회 행을 제한(가로줄)
select
    emp_no,
    emp_nm,
    addr,
    sex_cd
    
from tb_emp
where sex_cd = 2;

--pk로 필터링하면 무조건 1건 이하가 조회됨
select
    emp_no,
    emp_nm,
    addr,
    sex_cd
    
from tb_emp
where emp_no = 1000000003;

select
    emp_no,
    emp_nm,
    addr,
    sex_cd
    
from tb_emp
where sex_cd != 2;

select
    emp_no,
    emp_nm,
    addr,
    birth_de
    
from tb_emp
where birth_de >= '19800101';

select
    emp_no,
    emp_nm,
    addr,
    birth_de
    
from tb_emp
where birth_de >= '19800101'
and birth_de <= '19890101';


select
    emp_no,
    emp_nm,
    addr,
    birth_de
    
from tb_emp
where NOT birth_de >= '19800101';

--between
select
    emp_no,
    emp_nm,
    birth_de

from tb_emp
where birth_de between '19900101' and '19991231';

--in 연산 : or연산
select
    emp_no,
    emp_nm,
    dept_cd
from tb_emp
where dept_cd = 100002
or dept_cd = 100007
or dept_cd  = 100005
;    

select
    emp_no,
    emp_nm,
    dept_cd
from tb_emp
where dept_cd not in (100002,100007)
;    

--like : 검색할때 사용
--와일드카드 매핑(% :0글자 이상, _: 딱1 글자)

select
    emp_no, emp_nm, addr
from tb_emp
where addr LIKE '%용인%'
;
select
    emp_no, emp_nm, addr
from tb_emp
where emp_nm LIKE '이__'
;

-- 성씨가 김씨이면서
-- 부서가 100003, 100004 중에 하나면서
-- 90년대생인 사원의 사번, 이름, 생일, 부서 코드를 조회
SELECT
    emp_no,
    emp_nm,
    birth_de,
    dept_cd
FROM tb_emp
WHERE 1=1
    AND emp_nm LIKE '김%'
    AND dept_cd IN (100003, 100004)
    AND birth_de BETWEEN '19900101' AND '19901231'
;

--null값 조회
--반드시 is null로 조회할것
select
    emp_no,
    emp_nm,
    direct_manager_emp_no
from tb_emp
where direct_manager_emp_no is null;

select
    emp_no,
    emp_nm,
    direct_manager_emp_no
from tb_emp
where direct_manager_emp_no is not null;

-- 연산자 우선 순위
-- NOT > AND > OR
SELECT 
	EMP_NO ,
	EMP_NM ,
	ADDR 
FROM TB_EMP
WHERE 1=1
	AND EMP_NM LIKE '김%'
	AND (ADDR LIKE '%수원%' OR ADDR LIKE '%일산%')
;


