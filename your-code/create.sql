USE challenge2;

CREATE TABLE Cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(50) NOT NULL
);

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    StateProvince VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20)
);

CREATE TABLE Salespersons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StaffID VARCHAR(20) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL
);

CREATE TABLE Invoices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceNumber INT NOT NULL,
    Date DATE NOT NULL,
    Car_ID INT,
    Customer_ID INT,
    Salesperson_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars(ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(ID)
);








