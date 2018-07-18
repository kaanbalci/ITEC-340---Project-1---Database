-- ITEC340 Spring 2015
-- HW01
-- Kaan Balci

-- Answers to all questions below.

-- 1.
        SELECT COUNT(Movie) 
          FROM Movie_Genres 
          WHERE Genre IN 'Western'
          /
          
-- 2. 
        SELECT COUNT(Title) AS MovieDirected, Director FROM Movies 
           GROUP BY Director 
           ORDER BY Director DESC
           /

-- 3. 
        SELECT COUNT(Title) AS MovieDirected, Director FROM Movies 
           HAVING COUNT(Title) > 10 
           GROUP BY Director 
           ORDER BY Director DESC
           /

-- 4.
        SELECT DISTINCT Actor AS Person FROM Actors 
           UNION SELECT Director AS Person FROM Directors
           /
           
-- 5. 
        SELECT Actor FROM Actors 
           WHERE Actor NOT IN (SELECT Director FROM Directors)
           /


-- 6. 
        SELECT Title, Released, Review, Director, Rating FROM Movies 
                WHERE Director IS Null
                /


-- 7.
        SELECT Movie, Released FROM Movie_Genres 
                WHERE Genre IN ('Historical' , 'War') 
                GROUP BY Movie, Released 
                HAVING COUNT(Movie)>1
                /

-- 8. 
        SELECT DISTINCT Review, Movie FROM Movie_Genres, Movies 
                WHERE Review IN ('Good','Excellent') 
                AND Genre = 'Drama'
                /

-- 9. 
        SELECT Released, COUNT(Genre) AS NumRelease FROM Movie_Genres 
                WHERE Genre IN 'Action' 
                HAVING COUNT(Genre) >= 5 
                GROUP BY Released, Genre 
                ORDER BY NumRelease DESC
                /


-- 10.
        SELECT Actor, Released, COUNT(Movie) AS NumMovies FROM Starred_In 
                HAVING COUNT(Movie) > 1 
                GROUP BY Released, Actor
                /



-- 11. 


-- 12. 


-- 13.






