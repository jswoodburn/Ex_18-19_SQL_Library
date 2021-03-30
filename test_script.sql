use library;

-- root, librarian, reader
CALL searchLibraryByTitle ('Law');

-- root, librarian (to clear example row)
update checkouts set date_return = Null
where checkout_id = 3;

-- root, librarian, reader
CALL checkUserReturnDates (5);

-- only librarian
CALL returnCheckedOutBook (3, '2021-03-30');

-- root, librarian, reader
CALL checkUserReturnDates (5);