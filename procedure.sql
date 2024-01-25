# 프로시져(procedure): 데이터베이스의 함수
# 

set @count = 0;

call p_sum(20, 40, @result, @count);

select
	@count;