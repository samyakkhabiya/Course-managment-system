CREATE TABLE course_details (
  id INT(11) NOT NULL AUTO_INCREMENT,
  course_title VARCHAR(255) NOT NULL,
  youtube_link VARCHAR(255) NOT NULL,
  course_description TEXT NOT NULL,
  age_group VARCHAR(50) NOT NULL,
  course_duration INT(11) NOT NULL,
  course_fee DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE course_batches (
  id INT(11) NOT NULL AUTO_INCREMENT,
  course_id INT(11) NOT NULL,
  batch_name VARCHAR(50) NOT NULL,
  batch_start_date DATE NOT NULL,
  batch_end_date DATE NOT NULL,
  batch_timing VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (course_id) REFERENCES course_details(id)
);
