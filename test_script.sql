-- root, librarian, reader
CALL searchLibraryByTitle ('Law');

-- only root (to clear example row)
delete from checkouts
where checkout_id = 3;

-- root, librarian, reader
CALL checkUserReturnDates (5);

-- only librarian
CALL returnCheckedOutBook (3, '2021-03-30');

-- root, librarian, reader
CALL checkUserReturnDates (5);