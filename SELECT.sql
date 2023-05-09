--2.1 Название и продолжительность самого длительного трека.
select Name, Duration
from Track
WHERE Duration=(
	SELECT MAX(Duration) 
	FROM Track
);

--2.2 Название треков, продолжительность которых не менее 3,5 минут.
select Name, Duration  D
from Track
where Duration  >= 210
order by D;

--2.3 Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select Name, Year Y
from Collection
where (Year >= 2018) AND (Year <= 2020)
order by Y;

--2.4 Исполнители, чьё имя  состоит из одного слова.
select Pseudonym P
from Performer
where not Pseudonym like '% %'
order by P;

--2.5 Название треков, которые содержат слово «мой» или «my».
--select Name
--from Track
--where Name like '%My%';

select Name
from Track
where lower(Name) like 'my %'
	or lower(Name) like '% my'
	or lower(Name) like '% my %';

--3.1 Количество исполнителей в каждом жанре.
select G.Direction, count(*)
from Genre G
left join Genre_Performer G_P on G.Genre_id = G_P.Genre_id
left join PerformerP on G_P.Performer_id = P.Performer_id
group by G.Direction
order by count(P.Performer_id) desc;

--3.2 Количество треков, вошедших в альбомы  2019–2020 годов.
--select T.Name
--from Album A
--join Track T on T.Album = A.Album_id
--where (A.Year >= 2019) and (A.Year <= 2020);

--select A.Name, count(T.Track_id)
--from Album A
--join Track T on T.Album = A.Album_id
--where A.Year BETWEEN 2019 AND 2020
--GROUP BY A.Name;

select count(*) as Track1
from Track T
join Album A on T.Album = A.Album_id
where A.Year BETWEEN 2019 AND 2020


--3.3 Средняя продолжительность треков по каждому альбому.
select A.Name, AVG(T.Duration )
from Album A
left join Track T on T.Album = A.Album_id
group by A.Name
order by AVG(T.Duration );

--3.4 Все исполнители, которые не выпустили альбомы  в 2020 году.
select P.Pseudonym
from Performer P
where P.Pseudonym not in (
    select distinct P.Pseudonym
    from Performer P
    left join Album_Performer A_P on P.Performer_id = A_P.Performer_id
    left join Album A on A.Album_id = A_P.Album_id
    where A.Year = 2020;
);

--3.5 Названия сборников, в которых присутствует конкретный исполнитель  (Джиган).
select distinct C.Name
from Collection C
left join Collection_Track C_T on C.Collection_id = C_T.Collection_id
left join Track T on T.Track_id = C_T.Track_id
left join Album A on A.Album_id = T.Album
left join Album_Performer A_P on A_P.Album_id = A.Album_id
left join Performer P on P.Performer_id = A_P.Performer_id
where P.Pseudonym like '%Джиган%';
