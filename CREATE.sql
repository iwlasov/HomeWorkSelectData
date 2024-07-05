CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	performer_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer_Genre (
	performer_id INTEGER REFERENCES Performer(id),
	genre_id INTEGER REFERENCES Genre(id),
	CONSTRAINT pg PRIMARY KEY (performer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	album_date DATE NOT NULL, 
	CHECK (EXTRACT(YEAR FROM album_date) > 1900)
);

CREATE TABLE IF NOT EXISTS Performer_Album (
	performer_id INTEGER REFERENCES Performer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pa PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(40) NOT NULL,
	collection_date DATE NOT null,
	CHECK (EXTRACT(YEAR FROM collection_date) < 2024)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(40) NOT NULL,
	track_duration INTEGER NOT NULL,
    CHECK ((track_duration > 0) and (track_duration < 600)),  
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT tk PRIMARY KEY (track_id, collection_id)
);
