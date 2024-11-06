CREATE TABLE contact_info (
  id INT NOT NULL AUTO_INCREMENT,
  parent_name VARCHAR(255),
  your_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  mobile VARCHAR(20) NOT NULL,
  your_query TEXT,
  PRIMARY KEY (id)
);
