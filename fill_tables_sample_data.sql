use library;

insert into roles (role)
values ('Author'),
('Employee'),
('Reader');

insert into genres (genre)
values ('Fantasy'),
('Sci-Fi'),
('Biography'),
('Romance');

select *
from genres;

insert into person (first_name, last_name, age, role_id)
values ('Kiera', 'Knightley', 39, 3),
('Orlando', 'Bloom', '45', 3),
('Johnny', 'Depp', 50, 3),
('Geoffrey', 'Rush', '55', 3);

-- select *
-- from readers;

INSERT INTO person (first_name, last_name, role_id)
values ('Rachel', 'Green', 2),
('Ross', 'Geller', 2),
('Chandler', 'Bing', 2),
('Monica', 'Geller', 2),
('Phoebe', 'Buffay', 2),
('Ryan', 'Holiday', 1),
('Robert', 'Greene', 1),
('Napoleon', 'Hill', 1);

select *
from person;

insert into books (title, author_id, isbn, shelf_reference)
values ('The Daily Stoic', 10, '3768387878019876', 'KD12C2'),
('The 48 Laws of Power', 11, '3768187878019876', 'EK49D1'),
('The Law of Success', 12, '3768356778019876', 'QX47E3'),
('Think and Grow Rich', 12, '2768387878019876', 'ZJ14F9'),
('Think and Grow Rich', 12, '2768387878019876', 'ZJ14F9');

select *
from books;

insert into checkouts (book_id, date_out, date_due, reader_id, date_return)
values (1, '2021-01-29', '2021-02-12', 2, '2021-02-10');

alter table checkouts
modify date_return date;

insert into checkouts (book_id, date_out, date_due, reader_id)
values (2, '2021-03-05', '2021-03-19', 5);
-- How do we alter a column that is not null to be null

select *
from checkouts;

INSERT INTO person (first_name, last_name, role_id)
values ('50', 'Cent', 1),
('John', 'Maxwell', 1),
('Dale', 'Carnegie', 1);

SELECT * 
FROM person;


insert into books (title, author_id, isbn, shelf_reference)
values ('The Daily Stoic', 10, '3768387878019876', 'KD12C2'),
('The 48 Laws of Power', 11, '3768187878019876', 'EK49D1'), 
('The 50th Law', 13, '4768197878019871', 'RD12C3'),
('The 15 Invaluable Laws of Growth', 14, '3732187868013876', 'KD06C2'), 
('How to Win Friends and Influence People', 15, '3768111118019876', 'ID12L2');

insert into checkouts (book_id, date_out, date_due, reader_id)
values (7, '2021-03-29', '2021-04-12', 5);

insert into checkouts (book_id, date_out, date_due, reader_id)
values (4, '2021-03-29', '2021-04-12', 5);

-- delete from checkouts where reader_id = 4;

-- select *
-- from checkouts
