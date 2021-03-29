USE library;

SELECT *
FROM books;

DROP PROCEDURE IF EXISTS searchLibraryByTitle;
DELIMITER //
CREATE PROCEDURE searchLibraryByTitle 
(IN keyword varchar (100))
BEGIN
SELECT title, concat (first_name, " ", last_name) as author
FROM books
INNER JOIN person
ON person.person_id = books.author_id 
WHERE title LIKE CONCAT ('%',keyword,'%')
ORDER BY last_name ASC;
END //
DELIMITER ;

CALL searchLibraryByTitle ('Law');

-- join checkouts, books, if they type in their name they get book title and return date
DROP PROCEDURE IF EXISTS checkUserReturnDates;
DELIMITER //
CREATE PROCEDURE checkUserReturnDates
(IN id int)
BEGIN
SELECT title, concat (first_name, " ", last_name) as author, date_due
FROM checkouts
INNER JOIN books
ON checkouts.book_id = books.book_id
INNER JOIN person
ON books.author_id = person.person_id
WHERE reader_id = id
ORDER BY date_due ASC;
END //
DELIMITER ;

CALL checkUserReturnDates (5);






-- insert into books (title, author_id, isbn, shelf_reference)
-- values ('The Daily Stoic', 10, '3768387878019876', 'KD12C2'),
-- ('The 48 Laws of Power', 11, '3768187878019876', 'EK49D1'),

