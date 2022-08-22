select book_num, book_title,
	count(check_num) as "Time Checked Out"
from book
	left outer join checkout using (book_num)
group by book_num
order by count(check_num) desc, book_title;    