--не менее 4 исполнителей
insert into performer values
(1, 'Madonna', 'затактовый'),
(2, 'Elvis Presley', 'пунктирный'),
(3, 'Justin Bieber', 'равномерный'),
(4, 'Michael Jackson', 'затактовый'),
(5, 'Джиган', 'равномерный'),
(6, 'Ленинград', 'затактовый');

--не менее 3 genreов
insert into genre(direction) values
('Rock'),
('Rap'),
('Pop'),
('Classic'),
('House');

--не менее 3 albumов
insert into album values
(1, 'Студийный', 2018),
(2, 'Концертный', 2019),
(3, 'Программный', 2020),
(4, 'Дебютный', 2018),
(5, 'Демо', 2019),
(6, 'Саундтрэк', 2020);

--не менее 6 trackов
insert into track values
(1, 'Bronze', 210, 1),
(2, 'Aroma', 180, 2),
(3, 'My home', 220, 3),
(4, 'Call', 170, 4),
(5, 'Fall', 230, 5),
(6, 'My glass', 160, 6),
(7, 'Atlantis', 240, 6),
(8, 'My gift', 250, 5),
(9, 'My rain', 190, 4),
(10, 'Moon', 260, 3),
(11, 'Destiny', 220, 2),
(12, 'System', 230, 1);

--INSERT INTO track
--values
--(13, 'Myself', 220, 2),
--(14, 'myself', 220, 2),
--(15, 'gift my', 220, 2),
--(16, 'Gift My', 220, 2)
--;
--
--DELETE FROM track
--where track_id between 13 and 16; 

--не менее 4 collectionов
insert into collection values
(1, 'Весенняя', 2017),
(2, 'Новинки', 2019),
(3, 'Ночная', 2020),
(4, 'Эксклюзивная', 2018),
(5, 'Новогодняя', 2019),
(6, 'Энергичная', 2021);

--SQL запросы для Album_Performer
insert into Album_Performer values
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

--SQL запросы для Collection_Track
insert into Collection_Track values
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 1, 7),
(8, 2, 8),
(9, 3, 9),
(10, 4, 10),
(11, 5, 11),
(12, 6, 12);

--SQL запросы для Genre_Performer
insert into Genre_Performer values
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 3, 6);
