-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS albums;
DROP SEQUENCE IF EXISTS albums_id_seq;
--Do same for artists here

-- Then, we recreate them
--Create table artists

CREATE SEQUENCE IF NOT EXISTS albums_id_seq;
CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    release_year INTEGER,
    artist_id INTEGER
);

-- Finally, we add any records that are needed for the tests to run
--Insert pixies(rock), abba / taylor swift (pop), nina simone (jazz)

INSERT INTO albums (title, release_year, artist_id) VALUES ('Surfer Rosa', 1988, 1);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Doolittle', 1989, 1);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Ring Ring', 1973, 2);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Waterloo', 1974, 2);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Lover', 2019, 3);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Folklore', 2020, 3);
INSERT INTO albums (title, release_year, artist_id) VALUES ('I Put a Spell on You', 1965, 4);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Here Comes the Sun', 1971, 4);