# delete: 일반적으로는 key 값으로 삭제
delete
from
	product_register_tb
where
	product_color_id = (select # 서브쿼리
							product_color_id
						from
							product_color_tb
						where
							product_color_name = 'black');
                            
select
	*
from
	product_register_view;