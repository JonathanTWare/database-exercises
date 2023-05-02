SHOW DATABASES;

-- 1. Answer Below 
USE albums_db;

SELECT *
FROM albums;

-- 2. Answer 'id'

-- 3. Answer 'Name represents the title of the album'

-- 4. Answer 'The number of purchases for that particular album'

SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

-- 5. Answer 'The Dark Side of the Moon and The Wall'

SELECT *
FROM albums
WHERE artist = 'The Beatles';

-- 6. Answer 'Released in 1967'

SELECT *
FROM albums
WHERE name = 'Nevermind';

-- 7. Answer 'Genre is Grunge, Alternative Rock'

SELECT name
FROM albums
WHERE release_date BETWEEN 1989 AND 1999;

/* 8. Answer 

'The Bodyguard'
'Jagged Little Pill'
'Come On Over'
'Falling into You'
'Let\'s Talk About Love'
'Dangerous'
'The Immaculate Collection'
'Titanic: Music from the Motion Picture'
'Metallica'
'Nevermind'
'Supernatural' 
*/

/* 9a. Answer
'Grease: The Original Soundtrack from the Motion Picture'
'Bad'
'Sgt. Pepper\'s Lonely Hearts Club Band'
'Dirty Dancing'
'Let\'s Talk About Love'
'Dangerous'
'The Immaculate Collection'
'Abbey Road'
'Born in the U.S.A.'
'Brothers in Arms'
'Titanic: Music from the Motion Picture'
'Nevermind'
'The Wall'
*/

-- 9b. Answer Below
SELECT name AS low_selling_albums
FROM albums
WHERE sales < 20;














