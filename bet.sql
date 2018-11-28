CREATE TABLE users(
	numUser int not null auto_increment,
	firstNameUser varchar(50) not null,
	lastNameUser varchar(50) not null,
	mailUser varchar(50) not null,
	numLogin int
	PRIMARY KEY (numUser)
	FOREIGN KEY numLogin REFERENCES login(id);
	
CREATE TABLE betting(
	numBet int not null,
	numUser int not null,
	price float(10,10) not null,
	proOrCon ENUM('p','c') not null,
	PRIMARY KEY (numBet,numUser),
	FOREIGN KEY numBet REFERENCES bet(numBet)
	FOREIGN KEY numUser REFERENCES users(numUser)
	);
CREATE TABLE bet(
	numBet int not null auto_increment,
	libelleBet text(350),
	PRIMARY KEY (numBet));

CREATE TABLE login(
	id varchar(50) not null,
	password varchar(100) not null
	PRIMARY KEY (id));
	
	
