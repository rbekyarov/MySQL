CREATE TABLE `ex1`.`manufacturers`(
manufacturer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20)NOT NULL,
established_on DATE
);
CREATE TABLE `ex1`.`models`(
model_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20)NOT NULL,
manufacturer_id INT,
CONSTRAINT fk_models_manufacturers
FOREIGN KEY (manufacturer_id)
REFERENCES manufacturers(manufacturer_id)
);

INSERT INTO ex1.manufacturers (manufacturer_id, name, established_on) VALUES
( 1,'BMW' ,'1916-03-01' ),
( 2,'Tesla' ,'2003-01-01' ),
( 3,'Lada' ,'1966-05-01' );

INSERT INTO ex1.models (model_id, name, manufacturer_id) VALUES
(101 ,'x1' ,1 ),
(102 ,'i6' ,1 ),
(103 ,'Model S' ,2 ),
(104 ,'Model X' ,2),
(105 ,'Model 3' ,2 ),
(106 ,'Nova' ,3 );