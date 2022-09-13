select movies.movie_title,genres.genre_title,movies.director from movies 
inner join genres
on genres.genre_id=movies.genre_id and movie_title like "i%" order by movie_title desc