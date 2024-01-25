update product_color_tb
	set product_color_name = 'green'
where
	product_color_name = 'navy';
    
update product_color_tb
set
	product_color_name_kor = case
		when product_color_name = 'black' then '검정'
		when product_color_name = 'white' then '흰색'
		when product_color_name = 'green' then '초록'
	end;
    
# concat: 문자열을 합치는 함수