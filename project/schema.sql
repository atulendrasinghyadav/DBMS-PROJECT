create database Projects;

use Projects;

CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    CarName VARCHAR(50),
    CarType VARCHAR(50),
    RentalPricePerDay DECIMAL(10, 2),
    Availability BOOLEAN DEFAULT TRUE
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Address TEXT,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50)
);

CREATE TABLE Rentals (
    RentalID INT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    StartDate DATE,
    EndDate DATE,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);

# now we add the records in Cars table
INSERT INTO Cars (CarID, CarName, CarType, RentalPricePerDay,Availability)
VALUES (1, 'Toyota Corolla', 'Sedan', 50.00,True),
       (2, 'Honda Civic', 'Sedan', 60.00,True),
       (3, 'Ford Explorer', 'SUV', 100.00,True);

Select * from Cars;

# now we add the records in Customers table
INSERT INTO Customers (CustomerID, Name, Address, PhoneNumber, Email)
VALUES (101, 'John Doe', '123 Main St', '555-1234', 'johndoe@example.com'),
       (102, 'Jane Smith', '456 Elm St', '555-5678', 'janesmith@example.com');
       
Select * from Customers;

# now we rent a car
INSERT INTO Rentals (RentalID, CustomerID, CarID, StartDate, EndDate, TotalCost)
VALUES (1, 101, 1, '2025-01-01', '2025-01-05', 200.00);

Select * from Rentals;

# now we have to update the value of availibility of first car
UPDATE Cars SET Availability = FALSE WHERE CarID = 1;

Select * from Cars;

# returning of a car
DELETE FROM Rentals WHERE RentalID = 1;#so we delete the RentalID of perticular car

Select * from Rentals;

UPDATE Cars SET Availability = TRUE WHERE CarID = 1;#and we will update the avilability of car having the perticular Car Id

Select * from Cars;