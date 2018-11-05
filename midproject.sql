/*

need to add a trigger to customer because customer_type is changing dynamically
added new table customer_type with the relevant discount for customer_types

added a price attribute to booking because price changes with the customer_type

*/

create database Airplane;

use Airplane;

CREATE TABLE customer (
  user_id int(5) auto_increment,
  name varchar(20),
  email varchar(20),
  password varchar(20),
  age int(2),
  customer_type enum('Guest','Frequent','Gold') NOT NULL,
  mobile_no varchar(20),
  PRIMARY KEY (user_id)
);

CREATE TABLE aircraft (
  craft_id int(5) auto_increment,
  craft_type varchar(20),
  seats int(3),
  PRIMARY KEY (craft_id)
);

CREATE TABLE admins (
  admin_id int(2) auto_increment,
  name varchar(20),
  email varchar(20),
  password varchar(20),
  PRIMARY KEY (admin_id)
);

CREATE TABLE location (
  location_id int(5) auto_increment,
  location varchar(20),
  locateTo int(5),
  PRIMARY KEY (location_id),
  FOREIGN KEY (locateTo) references location(location_id)
);

CREATE TABLE airport (
  airport_code int(5) auto_increment,
  location_id int(5),
  PRIMARY KEY (airport_code),
  FOREIGN KEY (location_id) references location(location_id)
);

CREATE TABLE route (
  route_id int(5) auto_increment,
  origin int(5),
  destination int(5),
  PRIMARY KEY (route_id),
  FOREIGN KEY (origin) references airport(airport_code),
  FOREIGN KEY (destination) references airport(airport_code)
);

CREATE TABLE flight (
  flight_id int(5) auto_increment,
  route_id int(5),
  PRIMARY KEY (flight_id),
  FOREIGN KEY (route_id) references route(route_id)
);

CREATE TABLE predefined_schedule (
  schedule_id int(5) auto_increment,
  craft_id int(5),
  flight_id int(5),
  day varchar(20),
  departure_time varchar(20),
  arrival_time varchar(20),
  PRIMARY KEY (schedule_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id),
  FOREIGN KEY (flight_id) references flight(flight_id)
);

CREATE TABLE class (
  class_id int(5) auto_increment,
  route_id int(5),
  price varchar(20),
  class varchar(20),
  PRIMARY KEY (class_id),
  FOREIGN KEY (route_id) references route(route_id)
);

CREATE TABLE seat (
  seat_id int(5) auto_increment,
  craft_id int(5),
  seat_no varchar(20),
  PRIMARY KEY (seat_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id)
);

CREATE TABLE booking  (
  booking_id int(5) auto_increment,
  user_id int(5),
  schedule_id int(5),
  class_id int(5),
  seat_id int(5),
  booking_date varchar(20),
  booked_date varchar(20),
  price varchar(20),
  PRIMARY KEY (booking_id),
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id),
  FOREIGN KEY (seat_id) references seat(seat_id),
  FOREIGN KEY (user_id) references customer(user_id),
  FOREIGN KEY (class_id) references class(class_id)
);


CREATE TABLE real_schedule (
  real_schedule_id int(5) auto_increment,
  flight_id int(5),
  schedule_id int(5),
  starting_time varchar(20),
  arrival_time varchar(20),
  craft_id int(5),
  PRIMARY KEY (real_schedule_id),
  FOREIGN KEY (flight_id) references flight(flight_id),
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id)
);

CREATE TABLE customer_state (
  customer_state varchar(10) not null,
  discount int(2) not null,
  bookings_needed int(2) not null,
  PRIMARY KEY (customer_state)
);





