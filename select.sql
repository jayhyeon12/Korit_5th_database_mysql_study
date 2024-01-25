select * from student_tb;  # 
# *: 전체 컬럼
# ~from (테이블명) (조건): 테이블에서 지정된 key, values만 가져옴(조건에 해당하는 값만 가져옴)

-- select 
-- 	student_Id,
--     name,
-- from
-- 	student_tb
-- where
-- 	not name = '김재현'
--     and name = "김진우"; # 조건 작성 시 영단어로 작성. 특수문자 작성 X
--     
-- select
-- 	*
-- from
-- 	student_tb
-- where
-- 	name in ('김우진', '김진우');
--     
-- select
-- 	*
-- from
-- 	student_tb
-- where
-- 	student_id in (1, 3);
    

-- 학생 10명 정보 추가
--    김도균 27 부산 금정구
--    김도훈 25 부산 부산진구
--    김범수 33 부산 금정구
--    김상현 26 부산 남구
--    심재원 29 부산 남구
--    이재영 26 부산 서구
--    이정찬 29 부산 부산진구
--    이지언 26 부산 동래구
--    이평원 30 경남 양산
--    전주환 30 부산 부산진구

insert into student_tb(student_Id, name, age, adr) 
values
	(0, '김도균', 27, '부산 금정구'),
	(0, '김도훈', 25, '부산 부산진구'),
	(0, '김범수', 33, '부산 금정구'),
	(0, '김상현', 26, '부산 남구'),
	(0, '심재원', 29, '부산 남구'),
	(0, '이재영', 26, '부산 서구'),
	(0, '이정찬', 29, '부산 부산진구'),
	(0, '이지언', 26, '부산 동래구'),
	(0, '이평원', 30, '경남 양산시'),
	(0, '전주환', 30, '부산 부산진구');
    

truncate table student_tb;
    
select
	*
from
	student_tb
where
	age between 20 and 29;
    
    
select
	*
from
	student_tb
where
	age between 30 and 39;
    
    
select
	*
from
	student_tb
where
	name like '%원%';
    
select
	*
from
	student_tb
where
	name like '%도%'
    or name like '%원';
    

# 집계(그룹화) 구문 내 순서: from - where - group by - having - select - order by
select
	name,
    adr,
	count(*) as adr_count
from
	student_tb
group by
	adr
having #그룹화 이후 조건식
	count(*) >= 2
order by
	adr_count desc,
    adr desc