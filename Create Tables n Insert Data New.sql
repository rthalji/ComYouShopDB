-- ComYouShop database is not created in this script to let you create it and name it the way you need;
-- Create the database, then apply the script to build the tables and data.
-- Each time you run this script it drops all its tables if exists before, then recreate them again.
-- It is recommended that you allways run it in a new database you create (Say ComYouShop), so that you don't delete any existing database objects.

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Employees;

-- Create tables

-- Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2),
    QuantityInStock INT
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(6),
    DepartmentID INT,
    HireDate DATE,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(255)
);

-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(6),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    Category VARCHAR(50)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    SalesmanID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SalesmanID) REFERENCES Employees(EmployeeID)
);

-- Inserting Data

-- Employees
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Gender, HireDate, Position, Salary, PhoneNumber, Email) VALUES
(1,'Vivian','White',1,'Female','2022-08-15','Sales Representative',60000.00,'555-6666','Vivian.white@email.com'),
(2,'Andrew','Miller',2,'Male','2019-11-20','Marketing Coordinator',55000.00,'555-7777','andrew.miller@email.com'),
(3,'Lewis','Clark',3,'Male','2020-04-10','IT Analyst',70000.00,'555-8888','Lewis.clark@email.com'),
(4,'Ava','Wilso',4,'Female','2021-01-05','Financial Planner',75000.00,'555-9999','Ava.wilson@email.com'),
(5,'James','Taylor',5,'Male','2018-06-28','HR Specialist',60000.00,'555-0000','James.taylor@email.com'),
(6,'John','Doe',1,'Male','2020-01-15','Sales Manager',70000.00,'555-1111','john.doe@email.com'),
(7,'Jane','Smith',2,'Female','2019-05-20','Marketing Specialist',60000.00,'555-2222','jane.smith@email.com'),
(8,'Robert','Johnso',3,'Male','2021-03-10','IT Specialist',75000.00,'555-3333','robert.johnson@email.com'),
(9,'Emily','Brow',1,'Female','2018-07-05','Sales Representative',65000.00,'555-4444','emily.brown@email.com'),
(10,'Lucas','Davis',5,'Male','2022-02-28','HR Coordinator',55000.00,'555-5555','Lucas.Davis@email.com'),
(11,'Madeline','Anderson',2,'Female','2022-03-15','Marketing Specialist',65000.00,'555-1111','Madeline.anderson@email.com'),
(12,'Ava','Moore',1,'Female','2020-05-10','Sales Representative',70000.00,'555-2222','ava.moore@email.com'),
(13,'Logan','Baker',3,'Male','2019-09-28','IT Specialist',80000.00,'555-3333','logan.baker@email.com'),
(14,'Madison','Garcia',4,'Female','2021-04-05','Financial Analyst',65000.00,'555-4444','madison.garcia@email.com'),
(15,'Jackso','Thomas',5,'Male','2018-11-15','HR Manager',75000.00,'555-5555','jackson.thomas@email.com'),
(16,'Parker','Hill',1,'Male','2022-06-10','Sales Coordinator',55000.00,'555-6666','Parker.hill@email.com'),
(17,'David','Perez',2,'Male','2020-09-20','Marketing Manager',80000.00,'555-7777','david.perez@email.com'),
(18,'Emma','Marti',3,'Female','2019-02-10','IT Manager',90000.00,'555-8888','emma.martin@email.com'),
(19,'Avery','Barnes',5,'Female','2018-09-28','HR Manager',75000.00,'555-0000','avery.barnes@email.com'),
(20,'Adam','Brooks',5,'Male','2018-08-28','HR Coordinator',60000.00,'555-0000','Adam.brooks@email.com'),
(21,'Chloe','Ramirez',3,'Female','2022-07-10','IT Analyst',65000.00,'555-6666','chloe.ramirez@email.com'),
(22,'Amelia','Wright',2,'Female','2020-08-20','Marketing Specialist',70000.00,'555-7777','Amelia.wright@email.com'),
(23,'Blake','Stewart',3,'Male','2019-11-10','IT Specialist',80000.00,'555-8888','Blake.gomez@email.com'),
(24,'Lily','Gomez',3,'Female','2019-11-10','IT Specialist',80000.00,'555-8888','lily.gomez@email.com'),
(25,'Benjamin','Hayes',4,'Male','2021-06-15','Financial Analyst',65000.00,'555-9999','benjamin.hayes@email.com'),
(26,'Harper','Turner',1,'Female','2022-04-15','Sales Representative',70000.00,'555-1111','Harper.turner@email.com'),
(27,'Brody','Cooper',2,'Female','2020-06-10','Marketing Coordinator',55000.00,'555-2222','Brody.cooper@email.com'),
(28,'Isla','Fisher',1,'Male','2019-10-28','Sales Representative',75000.00,'555-3333','Isla.fisher@email.com'),
(29,'Ian','Stewart',4,'Male','2021-02-05','Financial Planner',80000.00,'555-4444','Ian.stewart@email.com'),
(30,'Liam','Cruz',5,'Male','2018-12-15','HR Specialist',60000.00,'555-5555','liam.cruz@email.com');

-- Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

-- Products
INSERT INTO Products (ProductID, ProductName, Price, QuantityInStock) VALUES
(1, 'Laptop', 999.99, 50),
(2, 'Desktop', 799.99, 30),
(3, 'Monitor', 199.99, 100),
(4, 'Keyboard', 49.99, 80),
(5, 'Mouse', 29.99, 120),
(6, 'Printer', 149.99, 25),
(7, 'External Hard Drive', 129.99, 40),
(8, 'Headphones', 79.99, 60),
(9, 'Webcam', 59.99, 35),
(10, 'Router', 89.99, 15);

-- Customers
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Gender, PhoneNumber, Address, Category) VALUES
(1,'Frederick','Johnson','alFrederickice@email.com','Male','555-1234','123 Main St, Cityville','Retail'),
(2,'Bob','Smith','bob@email.com','Male','555-5678','456 Oak St, Townsville','Corporate'),
(3,'Charlie','Brown','charlie@email.com','Male','555-9012','789 Pine St, Villagetown','Individual'),
(4,'Elijah','King','elijah@email.com','Male','555-1111','987 Pine St, Hamletsville','Retail'),
(5,'Zoe','Perry','zoe@email.com','Female','555-2222','654 Birch St, Villagetown','Corporate'),
(6,'Walter','Cook','Walter@email.com','Male','555-3333','321 Elm St, Cityville','Individual'),
(7,'Mila','Murphy','mila@email.com','Female','555-4444','456 Maple St, Townsville','Retail'),
(8,'Davian','Mills','Davian@email.com','Male','555-5555','789 Oak St, Hamletsville','Corporate'),
(9,'Sofia','Bell','sofia@email.com','Female','555-6666','123 Birch St, Villagetown','Individual'),
(10,'Liam','Harrison','liam@email.com','Male','555-7777','876 Pine St, Cityville','Retail'),
(11,'Sage','Evans','Sage@email.com','Female','555-8888','543 Elm St, Townsville','Corporate'),
(12,'Carter','Dixon','carter@email.com','Male','555-9999','210 Maple St, Hamletsville','Individual'),
(13,'Madelyn','Griffith','madelyn@email.com','Female','555-0000','987 Oak St, Villagetown','Retail'),
(14,'Reese','Sullivan','Reese@email.com','Female','555-1111','654 Pine St, Cityville','Corporate'),
(15,'Aubrey','Ward','aubrey@email.com','Female','555-2222','321 Birch St, Townsville','Individual'),
(16,'Eli','Fisher','eli@email.com','Male','555-3333','456 Elm St, Hamletsville','Retail'),
(17,'Alma','Greer','Alma@email.com','Female','555-4444','789 Maple St, Villagetown','Corporate'),
(18,'Connor','Hendrix','connor@email.com','Male','555-5555','123 Oak St, Cityville','Individual'),
(19,'Hazel','Sanchez','hazel@email.com','Female','555-6666','876 Birch St, Townsville','Retail'),
(20,'Owen','Marshall','owen@email.com','Male','555-7777','543 Pine St, Hamletsville','Corporate'),
(21,'Lily','Beck','lily@email.com','Female','555-8888','210 Elm St, Villagetown','Individual'),
(22,'Ember','Carr','Ember@email.com','Male','555-9999','987 Maple St, Cityville','Retail'),
(23,'Aaliyah','Monroe','aaliyah@email.com','Female','555-0000','654 Oak St, Townsville','Corporate'),
(24,'Leo','Hess','leo@email.com','Male','555-1111','321 Birch St, Hamletsville','Individual'),
(25,'Viviana','Langley','Viviana@email.com','Female','555-2222','456 Pine St, Villagetown','Retail'),
(26,'Gabriel','Sharp','gabriel@email.com','Male','555-3333','789 Elm St, Cityville','Corporate'),
(27,'Reign','Waller','peReignnelope@email.com','Male','555-4444','123 Maple St, Townsville','Individual'),
(28,'Jaxon','Hudson','jaxon@email.com','Male','555-5555','876 Oak St, Hamletsville','Retail'),
(29,'Ayden','Fleming','Ayden@email.com','Male','555-6666','543 Birch St, Villagetown','Corporate'),
(30,'Wes','Cohen','Wes@email.com','Male','555-7777','210 Pine St, Cityville','Individual'),
(31,'Sloane','Wheeler','stella@email.com','Female','555-8888','987 Elm St, Townsville','Retail'),
(32,'Parker','Wallace','parker@email.com','Male','555-9999','654 Maple St, Hamletsville','Corporate'),
(33,'Nova','Frost','nova@email.com','Female','555-0000','321 Oak St, Villagetown','Individual'),
(34,'Rylan','Steele','Rylan@email.com','Male','555-1111','456 Pine St, Cityville','Retail'),
(35,'Elena','Cameron','elena@email.com','Female','555-2222','789 Elm St, Townsville','Corporate'),
(36,'Miles','Hartman','miles@email.com','Male','555-3333','123 Birch St, Hamletsville','Individual'),
(37,'Aliza','Bauer','Aliza@email.com','Female','555-4444','876 Oak St, Villagetown','Retail'),
(38,'Axel','Gallagher','axel@email.com','Male','555-5555','543 Pine St, Cityville','Corporate'),
(39,'Evelyn','Quinn','Evie@email.com','Female','555-6666','210 Elm St, Townsville','Individual'),
(40,'Ayden','Nolan','Ayden@email.com','Male','555-7777','987 Maple St, Hamletsville','Retail');

-- Orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID, Quantity, SalesmanID) VALUES
(5,2,'2023-05-05',4,2,23),
(6,3,'2023-06-15',6,3,4),
(7,4,'2023-07-10',8,1,21),
(8,5,'2023-08-28',10,2,12),
(9,6,'2023-09-10',1,3,23),
(10,7,'2023-10-15',3,1,21),
(11,8,'2023-11-05',5,2,4),
(12,9,'2023-12-20',7,3,5),
(13,10,'2024-01-10',9,1,12),
(14,11,'2024-02-15',2,2,23),
(15,12,'2024-03-28',4,3,4),
(16,13,'2024-04-10',6,1,12),
(17,14,'2024-05-15',8,2,5),
(18,15,'2024-06-05',10,3,23),
(19,16,'2024-07-20',1,1,21),
(20,17,'2024-08-10',3,2,5),
(21,18,'2024-09-15',5,3,12),
(22,19,'2024-10-05',7,1,23),
(23,20,'2024-11-20',9,2,4),
(24,21,'2024-12-10',2,3,21);
