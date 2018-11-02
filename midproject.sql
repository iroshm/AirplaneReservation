create database Airplane;

use Airplane;

CREATE TABLE customer (
  user_id varchar(20),
  name varchar(20),
  email varchar(20),
  password varchar(20),
  age varchar(20),
  customer_type varchar(20),
  mobile_no varchar(20),
  PRIMARY KEY (user_id)
);

CREATE TABLE aircraft (
  craft_id varchar(20),
  craft_type varchar(20),
  seats varchar(20),
  PRIMARY KEY (craft_id)
);

CREATE TABLE admins (
  admin_id varchar(20),
  name varchar(20),
  email varchar(20),
  password varchar(20),
  PRIMARY KEY (admin_id)
);

CREATE TABLE location (
  location_id varchar(20),
  location varchar(20),
  locateTo varchar(20),
  PRIMARY KEY (location_id),
  FOREIGN KEY (locateTo) references location(location_id)
);

CREATE TABLE airport (
  airport_code varchar(20),
  location_id varchar(20),
  PRIMARY KEY (airport_code),
  FOREIGN KEY (location_id) references location(location_id)
);

CREATE TABLE route (
  route_id varchar(20),
  origin varchar(20),
  destination varchar(20),
  PRIMARY KEY (route_id),
  FOREIGN KEY (origin) references airport(airport_code),
  FOREIGN KEY (destination) references airport(airport_code)
);

CREATE TABLE flight (
  flight_id varchar(20),
  route_id varchar(20),
  PRIMARY KEY (flight_id),
  FOREIGN KEY (route_id) references route(route_id)
);

CREATE TABLE predefined_schedule (
  schedule_id varchar(20),
  craft_id varchar(20),
  flight_id varchar(20),
  day varchar(20),
  departure_time varchar(20),
  arrival_time varchar(20),
  PRIMARY KEY (schedule_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id),
  FOREIGN KEY (flight_id) references flight(flight_id)
);



CREATE TABLE classes (
  class_id varchar(20),
  route_id varchar(20),
  price varchar(20),
  classes varchar(20),
  PRIMARY KEY (class_id),
  FOREIGN KEY (route_id) references route(route_id)
);

CREATE TABLE Seat (
  seat_id varchar(20),
  craft_id varchar(20),
  seat_no varchar(20),
  PRIMARY KEY (seat_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id)
);

CREATE TABLE booking  (
  booking_id varchar(20),
  user_id varchar(20),
  schedule_id varchar(20),
  class_id varchar(20),
  seat_id varchar(20),
  booking_date varchar(20),
  booked_date varchar(20),
  PRIMARY KEY (booking_id),
  FOREIGN KEY (user_id) references customer(user_id),
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id),
  FOREIGN KEY (seat_id) references Seat(seat_id),
  FOREIGN KEY (class_id) references classes(class_id)
);


CREATE TABLE real_schedule (
  real_schedule_id varchar(20),
  flight_id varchar(20),
  schedule_id varchar(20),
  starting_time varchar(20),
  arrival_time varchar(20),
  craft_id varchar(20),
  PRIMARY KEY (real_schedule_id),
  FOREIGN KEY (flight_id) references flight(flight_id),
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id)
);









