CREATE Database practice
GO

use practice;
GO

CREATE TABLE Products(
	ProductID int PRIMARY KEY,
	ProductName nvarchar(100),
	Category nvarchar(50),
	Price INT NOT NULL,
	Description nvarchar(200)
	);GO
	INSERT INTO Products(ProductID, ProductName, Category, Price, Description) VALUES (0001, 'Meat', 'Food', 100, NULL);
	INSERT INTO Products(ProductID, ProductName, Category, Price, Description) VALUES (0002, 'Egg', 'Food', 20, 'from chicken');
    INSERT INTO Products(ProductID, ProductName, Category, Price, Description) VALUES (0003, 'Sandals', 'Stuff', 140, NULL);
	
	SELECT * FROM Products

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	Email nvarchar(100),
	Phone INT NOT NULL,
	Address nvarchar(150)
);
GO

	INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Phone, Address) VALUES (666, 'Nguyen', 'Minh', NULL, 0367844422, NULL);
	INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Phone, Address) VALUES (667, 'Pham', 'Tuan', 'tuan66@gmail.com', 0243347798, 'Ha Noi');
	INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Phone, Address) VALUES (668, 'Le', 'Juan', 'Juan86@gmail.com', 0975600986, 'Quang Ninh');
	INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Phone, Address) VALUES (669, 'Vo', 'Nguyen', NULL, 0458893456, 'Quang Binh');

	GO 

CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	TotalAmount MONEY,
	Status nvarchar(200),
	Constraint ord FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
);
GO
	
	INSERT INTO Orders(OrderID, CustomerID, OrderDate, TotalAmount, Status) VALUES (1000, 666, '2022-10-22', 400, 'CHECK');
	INSERT INTO Orders(OrderID, CustomerID, OrderDate, TotalAmount, Status) VALUES (1001, 667, '2001-9-11', 250, 'WAIT');
	INSERT INTO Orders(OrderID, CustomerID, OrderDate, TotalAmount, Status) VALUES (1002, 668, '2005-12-15', 300, 'CHECK');
GO

CREATE TABLE OrderItems(
	OrderItemID INT PRIMARY KEY,
	OrderID INT,
	ProductID INT,
	Quantity INT,
	UnitPrice INT,
	Constraint oid FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	Constraint pro FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

	INSERT INTO OrderItems(OrderItemID, OrderID, ProductID, Quantity, UnitPrice) VALUES (01, 1000, 1, 10, 1000);
	INSERT INTO OrderItems(OrderItemID, OrderID, ProductID, Quantity, UnitPrice) VALUES (02, 1001, 2, 30, 600);
	INSERT INTO OrderItems(OrderItemID, OrderID, ProductID, Quantity, UnitPrice) VALUES (03, 1002, 3, 5, 700);
	GO

	SELECT * FROM Products
	SELECT * FROM Customers
	SELECT * FROM Orders
	SELECT * FROM OrderItems

	SELECT COUNT(*) FROM Products;
	SELECT * FROM Products WHERE ProductName = 'Meat';
	SELECT * FROM Products WHERE Price = 20;
	SELECT * FROM Customers WHERE FirstName = 'Nguyen' AND LastName = 'Minh';
	SELECT * FROM Or

	SELECT Orders.* FROM Orders
	JOIN Customers ON Orders.CustomerID = Customers.CustomerID
	WHERE Customers.LastName = 'Minh';	