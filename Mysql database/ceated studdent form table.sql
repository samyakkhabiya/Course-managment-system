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



