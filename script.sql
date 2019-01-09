CREATE TABLE login(
mail varchar(90)  NOT NULL,
password varchar(50) NOT NULL,
lastname varchar(90) NOT NULL,
firstname varchar(50) NOT NULL,
phone varchar(15) NOT NULL,
country varchar(50) NOT NULL,
PRIMARY KEY(mail));

CREATE TABLE bet(
idBet int NOT NULL AUTO_INCREMENT,
objectBet tinytext NOT NULL,
PRIMARY KEY(idBet));

CREATE TABLE betting(
mail varchar(90) NOT NULL,
idBet int NOT NULL,
amount float(10,5) NOT NULL,
isFor bit(1) NOT NULL,
FOREIGN KEY (mail) REFERENCES login(mail),
FOREIGN KEY (idBet) REFERENCES bet(idBet),
PRIMARY KEY(mail,idBet));
