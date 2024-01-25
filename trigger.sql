# trigger

insert into user_mst_tb
values (0, 'kjh', '5789');

select
	*
from
	user_mst_tb;
select
	*
from
	user_dtl_tb;
    
delete
from
	user_mst_tb
where
	username = 'kjh';