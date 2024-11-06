CREATE TABLE albums (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  cover_photo_id INT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

CREATE TABLE photos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  album_id INT NOT NULL,
  photo_url VARCHAR(2083) NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(id)
);
