--Задание 2

--Название и продолжительность самого длительного трека.

SELECT track_name, track_duration FROM track
 WHERE track_duration = (SELECT MAX(track_duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.

SELECT track_name FROM track
 WHERE track_duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT collection_name FROM collection
 WHERE collection_date BETWEEN '2018.01.01' and '2020.12.31';

--Исполнители, чьё имя состоит из 2-х слов.

SELECT performer_name FROM performer
 WHERE performer_name LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».

SELECT track_name FROM track
 WHERE track_name LIKE '%My%';

--Задание 3

--Количество исполнителей в каждом жанре.

  SELECT genre_name, count(genre_id) FROM performer_genre
    JOIN genre on performer_genre.genre_id = genre.id
GROUP BY genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.

  SELECT album_name, album_date, count(album_id) FROM track
    JOIN album on track.album_id = album.id
   WHERE album_date BETWEEN '2019.01.01' and '2020.12.31'
GROUP BY album_name, album_date
ORDER BY count(album_id);

--Средняя продолжительность треков по каждому альбому.

  SELECT album_name, avg(track_duration) FROM track
    JOIN album on track.album_id = album.id
GROUP BY album_name
ORDER BY avg(track_duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.

  SELECT performer_name FROM performer_album
    JOIN album on performer_album.album_id = album.id
    JOIN performer on performer_album.performer_id = performer.id
   WHERE album_date not BETWEEN '2020.01.01' and '2020.12.31'
GROUP BY performer_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

  SELECT collection_name FROM track_collection
    JOIN track on track_collection.track_id = track.id
    JOIN collection on track_collection.collection_id = collection.id
    JOIN performer_album on track.album_id = performer_album.album_id 
    JOIN performer on performer_album.performer_id = performer.id
 --WHERE performer_name = 'Pete Tong'
 --WHERE performer_name = 'Westbam'
 --WHERE performer_name = 'LTJ Bukem'
   WHERE performer_name = 'Aphrodite'
GROUP BY collection_name;