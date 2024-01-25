# 서브쿼리: where, having 내에서는 컬럼이 무조건 하나이어야 함
## select 내에서 서브쿼리를 사용 시 동작이 길어지면서 성능이 떨어짐

select
	at.num,
    at.author_name
from
	(select 
		row_number() over(order by author_id desc) as num,
        author_id,
        author_name
    from
		author_tb
    where
		author_name like "글%") at
where
	at.num > 10;
    

select
	*,
    (select
		count(*)
	from
		publisher_tb) as total_count
from
	publisher_tb;
    
select
	*
from
	publisher_tb pt
    left outer join (select
						count(*)
					as
						total_count
					from
						publisher_tb)
					pt2 on (1 = 1);
                    
select
	*
from
	book_tb
where
	publisher_id in (select publisher_id from publisher_tb where publisher_name like '아%');
    
    
select
	*
from
	book_tb bt
    left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
where
	pt.publisher_name like '아%';
    


select @@profiling;
show profiles;
set profiling = 0;