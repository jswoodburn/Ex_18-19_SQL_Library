use library;

insert into genres (genre)
values ('Fantasy'),
('Sci-Fi'),
('Biography'),
('Romance');

select *
from genres;

insert into readers (first_name, last_name, age)
values ('Kiera', 'Knightley', 39),
('Orlando', 'Bloom', '45'),
('Johnny', 'Depp', 50),
('Geoffrey', 'Rush', '55');

insert into readers (first_name, last_name, age)
values ('Bill', 'Nighy', 70);

-- select *
-- from readers;

INSERT INTO employees (first_name, last_name)
values ('Rachel', 'Green'),
('Ross', 'Geller'),
('Chandler', 'Bing'),
('Monica', 'Geller'),
('Phoebe', 'Buffay');

-- select * from employees;

insert into authors (first_name, last_name)
values ('Ryan', 'Holiday'),
('Robert', 'Greene'),
('Napoleon', 'Hill');

insert into books (title, author_id, isbn, shelf_reference)
values ('The Daily Stoic', 1, 37683878, 'KD12C2'),
('The 48 Laws of Power', 2, 27683878, 'EK49D1'),
('The Law of Success', 3, 17683978, 'QX47E3'),
('Think and Grow Rich', 3, 37691878, 'ZJ14F9'),
('Think and Grow Rich', 3, 37691878, 'ZJ14F9');
-- Should we have added in the titles as a foreign key?

insert into checkouts (book_id, date_out, date_due, reader_id, date_return)
values (1, '2021-01-29', '2021-02-12', 2, '2021-02-10');

alter table checkouts
modify date_return date;



insert into checkouts (book_id, date_out, date_due, reader_id)
values (2, '2021-03-05', '2021-03-19', 5);
-- How do we alter a column that is not null to be null










