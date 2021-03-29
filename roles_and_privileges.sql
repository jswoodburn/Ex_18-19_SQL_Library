-- Roles and Privileges
use library;
create user librarian@localhost identified by 'password1';
create user reader@localhost identified by 'password2';
create user 'author'@'localhost' identified by 'password3';
create user author@localhost identified by 'password3';

grant select on library.* to 'librarian'@localhost identified by 'password1';
grant insert on library.books to librarian@localhost identified by 'password1';
grant insert to library.person to librarian@localhost identified by 'password1';




