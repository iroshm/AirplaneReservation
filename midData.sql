use airplane;

INSERT INTO `customer` (`user_id`, `name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('1', 'Damitha', 'test@123.com', '123456', '22', 'Gold', '0711234567');

INSERT INTO `aircraft` (`craft_id`, `craft_type`, `seats`) VALUES ('1', 'Boeing 737', '100');

INSERT INTO `admins` (`admin_id`, `name`, `email`, `password`) VALUES ('1', 'manusha', 'manusha@123.com', '123456');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('1', 'Sri Lanka', NULL);

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('2', 'Katunayake', '1');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('3', 'USA', NULL);

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('4', 'New York State', '3');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('5', 'New York city', '4');

/*INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('6', 'JFK', '5');*/

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('6', 'Ratmalana', '1');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('7', 'Mattala', '1');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('8', 'India', Null);

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('9', 'New Delhi', 8);

INSERT INTO `airport` (`airport_code`, `airport_name`, `location_id`) VALUES ('1', 'BMI', 2);

INSERT INTO `airport` (`airport_code`, `airport_name`, `location_id`) VALUES ('2', 'JFK', 5);

INSERT INTO `airport` (`airport_code`, `airport_name`, `location_id`) VALUES ('3', 'Indira Gandhi International Airport', 9);

INSERT INTO `airport` (`airport_code`, `airport_name`, `location_id`) VALUES ('4', 'Mattala Rajapaksha', 7);

INSERT INTO `airport` (`airport_code`, `airport_name`, `location_id`) VALUES ('5', 'Ratmalana Airport', 6);

INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('1', '1', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('2', '1', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('3', '1', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('4', '1', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('5', '2', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('6', '2', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('7', '2', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('8', '2', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('9', '3', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('10', '3', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('11', '3', '4');

INSERT INTO `flight` (`flight_id`, `route_id`) VALUES ('1', '1');
INSERT INTO `flight` (`route_id`) VALUES ('2');
INSERT INTO `flight` (`route_id`) VALUES ('3');
INSERT INTO `flight` (`route_id`) VALUES ('4');
INSERT INTO `flight` (`route_id`) VALUES ('5');
INSERT INTO `flight` (`route_id`) VALUES ('6');
INSERT INTO `flight` (`route_id`) VALUES ('7');
INSERT INTO `flight` (`route_id`) VALUES ('8');
INSERT INTO `flight` (`route_id`) VALUES ('9');
INSERT INTO `flight` (`route_id`) VALUES ('10');
INSERT INTO `flight` (`route_id`) VALUES ('11');

INSERT INTO `predefined_schedule` (`schedule_id`, `craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '1', '1', 'Monday', '0800', '1200');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '2', 'Monday', '0800', '1200');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '3', 'Tuesday', '0900', '1000');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '4', 'Wednesday', '0700', '1200');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '5', 'Friday', '0100', '2200');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '6', 'Wednesday', '0800', '1400');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '7', 'Monday', '0800', '1600');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '8', 'Tuesday', '1000', '1200');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '9', 'Monday', '1600', '1800');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '10', 'Friday', '2200', '0000');
INSERT INTO `predefined_schedule` (`craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '11', 'Friday', '0800', '1500');

INSERT INTO `class` (`class_id`, `route_id`, `price`, `class`) VALUES ('1', '1', '200', 'Buisness');

INSERT INTO `seat` (`seat_id`, `craft_id`, `seat_no`) VALUES ('1', '1', '1');

INSERT INTO `booking` (`booking_id`, `user_id`, `schedule_id`, `class_id`, `seat_id`, `booking_date`, `booked_date`) VALUES ('1', '1', '1', '1', '1', '5/6/2018', '1/6/2018');

INSERT INTO `real_schedule` (`real_schedule_id`, `flight_id`, `schedule_id`, `starting_time`, `arrival_time`, `craft_id`) VALUES ('1', '1', '1', '0805', '1210', '1');

INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Frequent', 5, 0);

INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Gold', 9, 10);