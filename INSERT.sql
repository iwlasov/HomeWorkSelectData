INSERT INTO genre(genre_name)
VALUES('house');
INSERT INTO genre(genre_name)
VALUES('techno');
INSERT INTO genre(genre_name)
VALUES('drumnbass');

INSERT INTO performer(performer_name)
VALUES('Pete Tong');
INSERT INTO performer(performer_name)
VALUES('Westbam');
INSERT INTO performer(performer_name)
VALUES('LTJ Bukem');
INSERT INTO performer(performer_name)
VALUES('Aphrodite');

INSERT INTO album(album_name, album_date)
VALUES('Essential Mix', '2000.01.01');
INSERT INTO album(album_name, album_date)
VALUES('The Annual', '2020.02.02');
INSERT INTO album(album_name, album_date)
VALUES('BamBamBam', '1994.03.03');
INSERT INTO album(album_name, album_date)
VALUES('Love Parade', '2019.04.04');
INSERT INTO album(album_name, album_date)
VALUES('Earth', '1995.05.05');
INSERT INTO album(album_name, album_date)
VALUES('Aftershock', '2002.06.06');
INSERT INTO album(album_name, album_date)
VALUES('Progression Session', '2010.07.07');

INSERT INTO collection(collection_name, collection_date)
VALUES('techhouse', '2023.08.08');
INSERT INTO collection(collection_name, collection_date)
VALUES('jungle', '2019.09.09');
INSERT INTO collection(collection_name, collection_date)
VALUES('dance music', '2021.10.10');
INSERT INTO collection(collection_name, collection_date)
VALUES('mash up', '2020.11.11');

INSERT INTO track(track_name, track_duration, album_id)
VALUES('Sputnik', 142, 1);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('To Be Free', 367, 2);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('Look For My', 306, 2);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('I Cant Stop', 190, 3);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('Mayday Anthem', 284, 3);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('Hard Times', 455, 4);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('Demon Theme', 338, 5);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('My Bad Ass', 205, 6);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('Twilight', 540, 7);

INSERT INTO track(track_name, track_duration, album_id)
VALUES('my own', 60, 1);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('own my', 120, 2);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('my', 180, 3);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('oh my god', 240, 4);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('myself', 300, 5);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('by myself', 360, 6);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('bemy self', 420, 7);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('myself by', 480, 1);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('by myself by', 540, 2);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('beemy', 90, 3);
INSERT INTO track(track_name, track_duration, album_id)
VALUES('premyne', 150, 4);

INSERT INTO performer_genre(performer_id, genre_id)
VALUES(1, 1);
INSERT INTO performer_genre(performer_id, genre_id)
VALUES(1, 2);
INSERT INTO performer_genre(performer_id, genre_id)
VALUES(2, 2);
INSERT INTO performer_genre(performer_id, genre_id)
VALUES(3, 3);
INSERT INTO performer_genre(performer_id, genre_id)
VALUES(4, 3);

INSERT INTO Performer_Album(performer_id, album_id)
VALUES(1, 1);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(1, 2);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(2, 3);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(2, 4);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(3, 5);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(4, 6);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(3, 7);
INSERT INTO Performer_Album(performer_id, album_id)
VALUES(4, 7);

INSERT INTO Track_Collection(track_id, collection_id)
VALUES(1, 1);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(2, 1);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(4, 1);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(5, 1);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(7, 2);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(8, 2);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(9, 2);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(1, 3);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(3, 3);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(5, 3);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(8, 3);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(1, 4);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(3, 4);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(5, 4);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(7, 4);
INSERT INTO Track_Collection(track_id, collection_id)
VALUES(9, 4);