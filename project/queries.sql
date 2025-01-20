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