select au_id, count(book_num)
from writes
group by au_id
order by count(book_num) desc, au_id;