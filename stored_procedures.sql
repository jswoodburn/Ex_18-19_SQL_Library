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
WHERE reader_id = id and date_return is null
ORDER BY date_due ASC;
END //
DELIMITER ;

CALL checkUserReturnDates (5);

DROP PROCEDURE IF EXISTS returnCheckedOutBook;
DELIMITER //
CREATE PROCEDURE returnCheckedOutBook
(IN id int, today date)
BEGIN
update checkouts set date_return = today
where checkout_id = id;
END //
DELIMITER ;

-- select * from checkouts;

CALL returnCheckedOutBook (3, '2021-03-30');

