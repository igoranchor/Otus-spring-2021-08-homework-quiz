truncate table genres cascade;
truncate table authors cascade;
truncate table comments cascade;;
SELECT setval('s_genres', 1);
SELECT setval('s_authors', 1);
SELECT setval('s_books', 1);
SELECT setval('s_comments', 1);
----
insert into genres (name)
values ('фэнтези');
----
insert into authors (name)
values ('Джон Рональд Руэл Толкин');
----
insert into books (title, genre_id, author_id)
values ('Хоббит', 2, 2);
insert into books (title, genre_id, author_id)
values ('Властелин колец', 2, 2);
----
insert into comments (text, book_id)
values ('Отличная книга!', 2);
insert into comments (text, book_id)
values ('Книга заслуживает внимания.', 3);
insert into comments (text, book_id)
values ('Смотрел только кино - обязательно прочту!', 3);
----
commit;
