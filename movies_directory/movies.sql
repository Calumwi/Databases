CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title text,
  genre text,
  release_year int
);

INSERT INTO movies (title, genre, release_year) VALUES
('Popstar', 'Comedy', 2016),
('Revenge of the Sith', 'Sci-fi', 2005);

SELECT title FROM movies;
