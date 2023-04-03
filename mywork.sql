CREATE DATABASE Library;                       /* Table creation in database */

CREATE TABLE Books (                           /* Create book table in database */
	PRIMARY KEY (Books_id),               	   /* Book list id*/
	Title VARCHAR(30) NOT NULL,                /* Setting title */
    Author VARCHAR(30) NOT NULL,               /* Setting Author*/
    ISBN INT NOT NULL						   /* ISBN to identify unique book number*/
);

CREATE TABLE Users (						   /* Create Users table in database */
	PRIMARY KEY (Users_id),                    /* User list id */
	First_name VARCHAR(30) NOT NULL,           /* Setting first name */
    Last_name VARCHAR(30) NOT NULL,            /* Setting Last name */
    Phone_num VARCHAR(30) NOT NULL,            /* Setting phone number */
	Address_1 VARCHAR(30) NOT NULL,            /* Setting address one */
    Address_2 VARCHAR(30) NOT NULL,            /* Setting address two */
    Postcode VARCHAR(30) NOT NULL              /* Setting postcode */
);

CREATE TABLE Loaned (                         /* Create Loaned table in database */
	PRIMARY KEY (Users_id),                   /* Loaned list id */
	FOREIGN KEY (Users_id) REFERENCES users(Users_id),     /* Foreign key relates to user ID*/
    FOREIGN KEY (Books_id) REFERENCES users(Books_id),     /* Foreign key relates to book ID*/
    date_lent DATE NOT NULL,                               /* Setting date lent */
    due_date DATE NOT NULL                                 /* Setting Date Due*/
);


