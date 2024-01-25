SELECT 
    *
FROM
    db_study.author_tb;
    
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