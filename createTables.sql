CREATE TABLE Train
(
    Train_Name VARCHAR(64),
    Train_Number INT PRIMARY KEY,
    Premium_Fare INT,
    General_Fare INT,
    Source VARCHAR(64),
    Destination VARCHAR(64),
    Days_Available VARCHAR(14)
);
CREATE TABLE TrainStatus
(
    Train_Number INT NOT NULL,
    Train_Date VARCHAR(64) NOT NULL,
    Premium_Available INT,
    General_Available INT,
    Premium_Occupied INT,
    General_Occupied INT,
    CHECK(Premium_Available < 10),
    CHECK(General_Available < 10),
    CHECK(Premium_Occupied < 10),
    CHECK(General_Occupied < 10),
    PRIMARY KEY(Train_Number, Train_Date),
    FOREIGN KEY (Train_Number) REFERENCES Train (Train_Number)
);


CREATE TABLE Passenger
(
    First_Name VARCHAR(32),
    Last_Name VARCHAR(32),
    SSN VARCHAR[9] PRIMARY KEY,
    Street_Address VARCHAR(64),
    County VARCHAR(64),
    City VARCHAR(64),
    Phone VARCHAR(10),
    Birth_Date VARCHAR(64)
);




CREATE TABLE Ticket
(
    Train_Number INT NOT NULL,
    Train_Date VARCHAR(64) NOT NULL,
    PassengerSSN VARCHAR(9),
    Ticket_Type VARCHAR(16),
    Ticket_Status VARCHAR(16),
    FOREIGN KEY (Train_Number, Train_Date) REFERENCES TrainStatus(Train_Number, Train_Date)
    FOREIGN KEY (PassengerSSN) REFERENCES Passenger (SSN)
);
