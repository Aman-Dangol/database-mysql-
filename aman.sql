select * from movies where year >2001  order by movies.year  desc;
select * from movies where movie_title like "r%";
select genres.*,movies.*
from movies
inner join genres
on movies.genre_id=genres.genre_id