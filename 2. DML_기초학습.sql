
--where ������
--��ȸ ���� ����(������)
select
    emp_no,
    emp_nm,
    addr,
    sex_cd
    
from tb_emp
where sex_cd = 2;

--pk�� ���͸��ϸ� ������ 1�� ���ϰ� ��ȸ��
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

--in ���� : or����
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

--like : �˻��Ҷ� ���
--���ϵ�ī�� ����(% :0���� �̻�, _: ��1 ����)

select
    emp_no, emp_nm, addr
from tb_emp
where addr LIKE '%����%'
;
select
    emp_no, emp_nm, addr
from tb_emp
where emp_nm LIKE '��__'
;

-- ������ �达�̸鼭
-- �μ��� 100003, 100004 �߿� �ϳ��鼭
-- 90������ ����� ���, �̸�, ����, �μ� �ڵ带 ��ȸ
SELECT
    emp_no,
    emp_nm,
    birth_de,
    dept_cd
FROM tb_emp
WHERE 1=1
    AND emp_nm LIKE '��%'
    AND dept_cd IN (100003, 100004)
    AND birth_de BETWEEN '19900101' AND '19901231'
;

--null�� ��ȸ
--�ݵ�� is null�� ��ȸ�Ұ�
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

-- ������ �켱 ����
-- NOT > AND > OR
SELECT 
	EMP_NO ,
	EMP_NM ,
	ADDR 
FROM TB_EMP
WHERE 1=1
	AND EMP_NM LIKE '��%'
	AND (ADDR LIKE '%����%' OR ADDR LIKE '%�ϻ�%')
;


