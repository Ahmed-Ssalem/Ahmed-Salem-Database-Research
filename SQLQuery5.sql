CREATE DATABASE Library;

CREATE TABLE Author_Informations(
	Author_ID int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Name nvarchar(250) NOT NULL,
	Date_of_birth date,
);

CREATE TABLE Customer_Informations(
	Customer_ID int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Name nvarchar(250) NOT NULL,
	Email nvarchar(250),
	Address nvarchar(250) NOT NULL,
	Phone_Number int NOT NULL,
);

CREATE TABLE Employee_Informations(
	Employee_ID int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Name nvarchar(250) NOT NULL,
	Address nvarchar(250) NOT NULL,
	Phone_Number int NOT NULL,
	Email nvarchar(250) NOT NULL,
	Password nvarchar(250) NOT NULL,
	National_Number int,
);

CREATE TABLE Book_Informations(
	Book_ID int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Author_ID int NOT NULL,
	Title nvarchar(250) NOT NULL,
	Language nvarchar(250) NOT NULL,
	Type nvarchar(250) NOT NULL,
	Price int NOT NULL,

	CONSTRAINT FK_AutherID FOREIGN KEY (Author_ID)
	REFERENCES Author_Informations (Author_ID)
);

CREATE TABLE Order_Informations(
	Order_ID int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Customer_ID int NOT NULL,
	Employee_ID int NOT NULL,
	Book_ID int NOT NULL,
	Order_Date datetime,
	Total_Price int NOT NULL,

	CONSTRAINT FK_CustomerID FOREIGN KEY (Customer_ID)
	REFERENCES Customer_Informations (Customer_ID),

	CONSTRAINT FK_EmployeeID FOREIGN KEY (Employee_ID)
	REFERENCES Employee_Informations (Employee_ID),

	CONSTRAINT FK_BookID FOREIGN KEY (Book_ID)
	REFERENCES Book_Informations (Book_ID),
);

/*****************************************************************************************************************************/

/****************   Insert Statement  ****************/

INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Stephen Hawkings', '8-1-1942');
INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Thomas Pynchon', '8-3-1937');
INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Charles Dickens', '7/2/1812');
INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Arun Shourie', '2-11-1941');
INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Amartya Sen', '3-11-1933');
INSERT INTO Author_Informations (Name, Date_of_birth)
VALUES ('Mahatma Gandhi', '2-10-1869');

SELECT * FROM Author_Informations 


INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Mohamed Ahmed', 01206178648, 'Mohamed@gmail.com', 'Alex');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Ali Ahmed', 01069542527, 'Ali@gmail.com', 'Cairo');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Gamal Ali', 0163548648, 'Gamal@gmail.com', 'Alex');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Mohamed Eslam', 01106252410, 'Mohamed@gmail.com','Aswan');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Ibrahim Ahmed', 01206178648, 'Ibrahim@gmail.com','Mansora');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Ahmed Ali', 01987235420, 'Ahmed@gmail.com','Alex');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Eslam Mohamed', 01039178648, 'Eslam@gmail.com','KafrElShikh');
INSERT INTO Customer_Informations (Name, Phone_Number,Email,Address)
VALUES ('Mostafa Mohamed', 0106178648, 'Mostafa@gmail.com','Alex');

SELECT * FROM Customer_Informations 

INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Moamen Ali', 015358648, 'Moamen@gmail.com','Alex','Asdfg',33020015);
INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Mohamed Elsayed', 0155568427, 'Mohameddd@gmail.com','Montaza','zxdfg',55020015);
INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Moataz Ramad', 01206639141, 'Mooo@gmail.com','Mandara','Oiuyn',90996015);
INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Salma Ali', 0102385648, 'Salma@gmail.com','Alex','aqwsd',70980015);
INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Menna Ahmed', 0122358648, 'Menna@gmail.com','Cairo','pazmkid',98561023);
INSERT INTO Employee_Informations (Name, Phone_Number,Email,Address,Password,National_Number)
VALUES ('Alaa Ali', 010236648, 'Alaa@gmail.com','Alex','manbdwa',50607548);

SELECT * FROM Employee_Informations 


INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Bleedings Edge', 2, 'Arabic','Novel',60);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('A Brief History of Time', 1, 'English','scientific',560);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('On The Shoulders Of Giants', 1, 'English','scientific',2605);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('The Idea Of Justice', 5, 'English','politician',3000);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('American Notes', 3, 'English','Novel',620);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Barnaby Rudge', 3, 'Arabic','Philosophical',140);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('The Essential Gandhi', 6, 'Arabic','politician',8000);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Theory Of EveryThing', 1, 'English','scientific',440);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Religion In Politics', 4, 'Arabic','politician',670);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Symptoms Of Fascism', 4, 'English','Philosophical',110);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Indian Controversies', 4, 'English','politician',530);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Identity And Violence', 5, 'English','Philosophical',6100);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Slow Learner', 2, 'English','Novel',90);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Sketches By Boz', 3, 'English','Philosophical',30);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('The Grand Design', 1, 'English','scientific',700);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Harvesting Our Souls', 4, 'French','Philosophical',400);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Against The Day', 2, 'French','Philosophical',1200);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('The Signal Man', 3, 'French','Story',300);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Courts and Their Judgments', 4, 'English','Philosophical',800);
INSERT INTO Book_Informations (Title, Author_ID,Language, Type,Price)
VALUES ('Oliver Twest', 3, 'English','Novel',540);

SELECT * FROM Book_Informations 


INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (8, 1, 6, '1-1-2020', 720);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (1, 3, 10, '1-1-2020', 1200);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (3, 1, 20, '1-1-2020', 320);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (2, 2, 4, '2-1-2020', 2000);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (2, 5, 13, '2-1-2020', 6050);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (4, 6, 11, '2-1-2020', 120);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (5, 4, 19, '3-1-2020', 820);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (8, 4, 15, '3-1-2020', 170);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (7, 2, 12, '3-1-2020', 550);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (7, 1, 20, '3-1-2020', 640);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (7, 1, 16, '3-1-2020', 2600);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (1, 5, 8, '4-1-2020', 60);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (3, 6, 1, '4-1-2020', 980);
INSERT INTO Order_Informations (Customer_ID, Employee_ID,Book_ID, Order_Date,Total_Price)
VALUES (7, 6, 20, '5-1-2020', 460);

SELECT * FROM Order_Informations 

/*****************************************************************************************************************************/


/*************    Select Statements using Different Functions   ***************/


/*1.How to find the most expensive book on the book’s information table? */

SELECT MAX(Price) AS LargestPrice FROM Book_Informations;


/*2.How to find the number of employees who live at the same address for each address?*/

SELECT COUNT(Employee_ID) AS NumberOfEmployee, Address  FROM Employee_Informations GROUP BY Address;


/*3.How to make the names of the customers in lower case on the customer’s information table?*/

SELECT LOWER(Name) AS Lower_Case_Customer_Name FROM Customer_Informations;


/*4.How to Find the number of books translated for French only?*/

SELECT COUNT(Book_ID) AS NumberOfBooksInFrench FROM Book_Informations 
WHERE Book_ID IN (SELECT Book_ID  FROM Book_Informations WHERE Language = 'French')


/*5.How to find the average price of books in the book table?*/

SELECT AVG(Price) AS AveragePrice FROM Book_Informations;


/*6.How to find the cheapest book on the book’s information table?*/

SELECT MIN(Price) AS SmallestPrice FROM Book_Informations;


/*7.How to find the sum of total prices for orders in the order’s information table?*/

SELECT SUM(Total_Price) AS TotalItemsOrdered FROM Order_Informations;


/*8.How to make the names of the employees in lower case on the employee’s information table?*/

SELECT UPPER(Name) AS Upper_Case_Employee_Name FROM Employee_Informations;


/*9.Choose the month from the order’s date of all orders in the orders’ information table*/
SELECT MONTH(Order_Informations.Order_Date) FROM Order_Informations;


/*10.Return "MORE" if the book’s price is greater than 1000, or "LESS" if the if the book’s price is lower than 1000 on the book’s information table.*/

SELECT Book_ID, Price, IIF( Price > 1000 , 'MORE', 'LESS') FROM Book_Informations;


/*11.How to select the first 5 letters of customer names in customers’ information table?*/

SELECT SUBSTRING(Name, 1, 5) AS ExtractString FROM Customer_Informations;


/*12.How to reverse customer names in customers’ information table?*/

SELECT REVERSE(Name) FROM Customer_Informations;


/*13.How to choose the day from the order’s date of all orders in the orders’ information table?*/

SELECT DAY(Order_Informations.Order_Date) FROM Order_Informations;


/*14.How to find the number of employees who live in Alexandria only in the employees’ information table?*/

SELECT COUNT(EMPLOYEE_ID) AS NumberOfEmployeeInAlex FROM Employee_Informations 
WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID  FROM Employee_Informations WHERE Address = 'Alex')


/*15.How to find the average total prices of orders in the orders’ information table?*/

SELECT AVG(Total_Price) AS AveragePrice FROM Order_Informations;


/*16.How to find the greatest author’s ID whose date of birth is greater than the date of “5-10-1860”?*/

SELECT MAx(Author_ID) FROM Author_Informations 
WHERE Author_ID IN (SELECT Author_ID  FROM Author_Informations WHERE Date_of_birth > '5-10-1860')


/*17.How to extract 10 characters from the text in the book title’s column starting from right?*/

SELECT RIGHT(Title, 10) AS ExtractString FROM Book_Informations;


/*18.How to extract 10 characters from the text in the book title’s column starting from left?*/
SELECT LEFT(Title, 10) AS ExtractString FROM Book_Informations;


/*19.How to choose the year from the order’s date of all orders in the orders’ information table?*/

SELECT YEAR(Order_Informations.Order_Date) FROM Order_Informations;


/*20.How to find the number of the books in the library in the books’ information table?*/

SELECT COUNT(Book_ID) AS NumberOfBooks FROM Book_Informations;

/*****************************************************************************************************************************/

/*************** Select Statements using Sub Query *****************/

SELECT Title,Price FROM Book_Informations WHERE Price > (SELECT AVG (Price) FROM Book_Informations)
ORDER BY Price DESC  

SELECT Title,Type,Price FROM Book_Informations WHERE Price = (SELECT MIN(Price) AS SmallestPrice FROM Book_Informations)

SELECT Title,Type,Price FROM Book_Informations WHERE Price < (SELECT MAX(Price) AS LargestPrice FROM Book_Informations)
ORDER BY Price DESC


/*****************************************************************************************************************************/


/************  Select Statements using Count and Group Functions  *************/

SELECT COUNT(Customer_ID), Address FROM Customer_Informations
GROUP BY Address;

SELECT COUNT(Book_ID), Author_ID FROM Book_Informations
GROUP BY Author_ID;

/*****************************************************************************************************************************/



/*********** Select Statements using Different Joins  *****************/

/*  1- Inner Join  */
SELECT Order_Informations.Order_ID, Customer_Informations.Name, Order_Informations.Order_Date
FROM Order_Informations
INNER JOIN Customer_Informations ON Order_Informations.Customer_ID = Customer_Informations.Customer_ID;

SELECT Book_Informations.Title, Author_Informations.Name,Author_Informations.Author_ID
FROM Book_Informations
INNER JOIN Author_Informations ON Book_Informations.Author_ID = Author_Informations.Author_ID;

/*  2- Left Join  */
SELECT Customer_Informations.Name, Order_Informations.Order_ID
FROM Customer_Informations
LEFT JOIN Order_Informations ON Customer_Informations.Customer_ID = Order_Informations.Customer_ID 
ORDER BY Customer_Informations.Name;

/*  3- Right Join  */
SELECT Order_Informations.Order_ID, Employee_Informations.Name, Employee_Informations.Address 
FROM Order_Informations
RIGHT JOIN Employee_Informations ON Order_Informations.Employee_ID = Employee_Informations.Employee_ID
ORDER BY Order_Informations.Order_ID;

/*  4- Full Join  */
SELECT Employee_Informations.Name, Order_Informations.Order_ID
FROM Employee_Informations
FULL OUTER JOIN Order_Informations ON Employee_Informations.Employee_ID=Order_Informations.Employee_ID
ORDER BY Employee_Informations.Name;

/*  5- Self Join  */
SELECT A.Name AS CustomerName1, B.Name AS CustomerName2, A.Address FROM Customer_Informations A, Customer_Informations B
WHERE A.Customer_ID <> B.Customer_ID AND A.Address = B.Address ORDER BY A.Address;


/*****************************************************************************************************************************/


/***********  Update Statement  **********/

UPDATE Author_Informations
SET Date_of_birth = '7-6-1952' WHERE Author_ID = 1;

UPDATE Book_Informations
SET Type = 'politician', Language = 'English', Price = 430  WHERE Book_ID = 6;

UPDATE Customer_Informations
SET Name = 'Salma Ahmed', Address = 'Cairo', Email = 'SalmaSS@gmail.com' WHERE Customer_ID = 5;

UPDATE Employee_Informations
SET Name = 'Ahmed Elsayed', Email = 'AhmedA@gmail.com', Password = 'Wkldfad' WHERE Employee_ID = 2;

UPDATE Order_Informations
SET Order_Date = '1-1-2020', Total_Price = 4200 WHERE Order_ID = 4;


/*****************************************************************************************************************************/


/**************   Delete Statement  *************/

DELETE FROM Order_Informations WHERE Book_ID = 7;
DELETE FROM Book_Informations WHERE Author_ID = 6;
DELETE FROM Author_Informations WHERE Name = 'Mahatma Gandhi';
DELETE FROM Order_Informations WHERE Employee_ID = 6;
DELETE FROM Employee_Informations WHERE Name = 'Alaa Ali';


/*****************************************************************************************************************************/




DROP DATABASE Library;

