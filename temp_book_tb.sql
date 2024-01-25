select * from temp_book_tb;

insert into author_tb
SELECT
	0,
	author
FROM
	temp_book_tb
group by
	author
order by
	author;


insert into book_tb
select
	0,
    tbt.book_name,
    at.author_id,
    pt.publisher_id
from
	temp_book_tb tbt
	left outer join author_tb at on(at.author_name = tbt.author)
    left outer join publisher_tb pt on(pt.publisher_name = tbt.publisher)
group by
	tbt.book_name,
    at.author_id,
    pt.publisher_id
order by
	book_name,
    author_id,
    publisher_id;