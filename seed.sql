
DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Sally', 'cat', 'https://images.pexels.com/photos/8942611/pexels-photo-8942611.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 3, 'Incredibly adorable.', 't'),
  ('Porci', 'porcupine', 'https://media.gettyimages.com/photos/african-brushtailed-porcupine-with-raised-quills-picture-id157485439?s=612x612', 5, 'Kind but spiky!', 't'),
  ('Charles', 'dog', 'https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',1, 'Lovely, quiet and nice', 't'),
  ('Kathy', 'cat', 'https://images.pexels.com/photos/7725635/pexels-photo-7725635.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',2 , null, 't');