-- Creating tables for Spotify
CREATE TABLE artists (
     id VARCHAR(50) NOT NULL,
     follwers INT,
	 genres VARCHAR(40),
	 name VARCHAR(40) NOT NULL,
	 popularity INT,
     PRIMARY KEY (id)
);

-- Creating tables for Spotify
CREATE TABLE data_by_artists (
     genres VARCHAR(40),
     artists VARCHAR(40) NOT NULL,
	 acousticness REAL,
	 danceability REAL,
	 duration_ms REAL,
	 energy REAL,
	 instrumentalness REAL,
	 liveness REAL,
	 loudness REAL,
	 speechiness REAL,
	 tempo REAL,
	 valence REAL,
	 popularity REAL,
	 key INT,
     mode INT,
	 count INT,
     PRIMARY KEY (artists)
);

-- Creating tables for Spotify
CREATE TABLE data_by_genres (
	 mode INT,
     genres VARCHAR(40),
	 acousticness REAL,
	 danceability REAL,
	 duration_ms REAL,
	 energy REAL,
	 instrumentalness REAL,
	 liveness REAL,
	 loudness REAL,
	 speechiness REAL,
	 tempo REAL,
	 valence REAL,
	 popularity REAL,
	 key INT,
     PRIMARY KEY (genres)
);

-- Creating tables for Spotify
CREATE TABLE data_by_year (
	 mode INT,
     year INT,
	 acousticness REAL,
	 danceability REAL,
	 duration_ms REAL,
	 energy REAL,
	 instrumentalness REAL,
	 liveness REAL,
	 loudness REAL,
	 speechiness REAL,
	 tempo REAL,
	 valence REAL,
	 popularity REAL,
	 key INT,
     PRIMARY KEY (year)
);

-- Creating tables for Spotify
CREATE TABLE data_o (
	 valence REAL,
     year INT,
	 acousticness REAL,
	 artists VARCHAR(40),
	 danceability REAL,
	 duration_ms REAL,
	 energy REAL,
	 id VARCHAR(50),
	 instrumentalness REAL,
	 key INT,
	 liveness REAL,
	 loudness REAL,
	 mode INT,
	 name VARCHAR(40),
	 popularity REAL,
	 release_date VARCHAR(40),
	 speechiness REAL,
	 tempo REAL,
     PRIMARY KEY (id)
);

-- Creating tables for Spotify
CREATE TABLE tracks (
	 id VARCHAR(50),
	 name VARCHAR(40),
	 popularity INT,
	 duration_ms INT,
	 explicit INT,
	 artists VARCHAR(40),
	 id_artists VARCHAR (40),
	 release_date VARCHAR(40),
	 danceability REAL,
	 energy REAL,
	 key INT,
	 loudness REAL,
	 mode INT,
	 speechiness REAL,
	 acousticness REAL,
	 instrumentalness REAL,
	 liveness REAL,
	 valence REAL,
	 tempo REAL,
	 time_signature INT,
     PRIMARY KEY (id)
);