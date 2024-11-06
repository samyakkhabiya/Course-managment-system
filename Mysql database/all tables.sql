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

CREATE TABLE contact_info (
  id INT NOT NULL AUTO_INCREMENT,
  parent_name VARCHAR(255),
  your_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  mobile VARCHAR(20) NOT NULL,
  your_query TEXT,
  PRIMARY KEY (id)
);


CREATE TABLE creative_corner (
  id INT NOT NULL AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE,
  gender ENUM('Male', 'Female'),
  res_address VARCHAR(255),
  office_address VARCHAR(255),
  phone_res VARCHAR(20),
  phone_off VARCHAR(20),
  mobile VARCHAR(20),
  email VARCHAR(255),
  qualification VARCHAR(255),
  course_enrolled VARCHAR(255),
  start_date DATE,
  start_time TIME,
  payment_method ENUM('Cash', 'Cheque', 'Demand Draft'),
  amount DECIMAL(10,2),
  bank_name VARCHAR(255),
  cheque_dd_no VARCHAR(20),
  cheque_dd_date DATE,
  agreement BOOLEAN,
  date_applied DATE
);