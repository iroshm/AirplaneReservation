CREATE TRIGGER `customer_validation`
	BEFORE INSERT
	ON `customer`
	FOR EACH ROW

BEGIN

   IF NEW.`email` NOT LIKE '%_@%_.__%' THEN
		SIGNAL SQLSTATE VALUE '45001'
			SET MESSAGE_TEXT = '[table:customer] - `email` column is not valid';
	END IF;

   IF (NEW.`age` > 100) THEN
     SIGNAL SQLSTATE VALUE '45000'
			SET MESSAGE_TEXT = '[table:person] - `age` column is not valid';
   END IF;
   
   
  

END