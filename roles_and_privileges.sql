-- Roles and Privileges

use library;

create user 'librarian'@'localhost' identified by 'password1';
create user 'reader'@'localhost' identified by 'password2';
-- create user 'author'@'localhost' identified by 'password3';
-- create user author@localhost identified by 'password3';

grant select on library.* to 'librarian'@'localhost';
grant insert, update (shelf_reference) on library.books to 'librarian'@'localhost';
grant insert on library.person to 'librarian'@'localhost';
grant insert, update (date_return) on library.checkouts to 'librarian'@'localhost';

grant select on library.books to 'reader'@'localhost';
grant select on library.checkouts to 'reader'@'localhost';
grant update (first_name, last_name) on library.person to 'reader'@'localhost';

grant execute on procedure library.searchLibraryByTitle to 'librarian'@'localhost';
grant execute on procedure library.searchLibraryByTitle to 'reader'@'localhost';

grant execute on procedure library.checkUserReturnDates to 'librarian'@'localhost';
grant execute on procedure library.checkUserReturnDates to 'reader'@'localhost';

grant execute on procedure library.returnCheckedOutBook to 'librarian'@'localhost';
