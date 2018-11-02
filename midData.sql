use airplane;

INSERT INTO `customer` (`user_id`, `name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('1', 'Damitha', 'test@123.com', '123456', '22', 'Gold', '0711234567');

INSERT INTO `aircraft` (`craft_id`, `craft_type`, `seats`) VALUES ('1', 'Boeing 737', '100');

INSERT INTO `admins` (`admin_id`, `name`, `email`, `password`) VALUES ('1', 'manusha', 'manusha@123.com', '123456');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('1', 'Sri Lanka', NULL);

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('2', 'Katunayake', '1');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('3', 'USA', NULL);

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('4', 'New York State', '3');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('5', 'New York city', '4');

INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('6', 'JFK', '5');

INSERT INTO `airport` (`airport_code`, `location_id`) VALUES ('1', '2');

INSERT INTO `airport` (`airport_code`, `location_id`) VALUES ('2', '6');

INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('1', '1', '2');

INSERT INTO `flight` (`flight_id`, `route_id`) VALUES ('1', '1');

INSERT INTO `predefined_schedule` (`schedule_id`, `craft_id`, `flight_id`, `day`, `departure_time`, `arrival_time`) VALUES ('1', '1', '1', 'Monday', '0800', '1200');

INSERT INTO `classes` (`class_id`, `route_id`, `price`, `classes`) VALUES ('1', '1', '200', 'Buisness');

INSERT INTO `seat` (`seat_id`, `craft_id`, `seat_no`) VALUES ('1', '1', '1');

INSERT INTO `booking` (`booking_id`, `user_id`, `schedule_id`, `class_id`, `seat_id`, `booking_date`, `booked_date`) VALUES ('1', '1', '1', '1', '1', '5/6/2018', '1/6/2018');

INSERT INTO `real_schedule` (`real_schedule_id`, `flight_id`, `schedule_id`, `starting_time`, `arrival_time`, `craft_id`) VALUES ('1', '1', '1', '0805', '1210', '1');