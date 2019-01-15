CREATE DATABASE anilu556;

# Schema

CREATE TABLE Airlines (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Airline VARCHAR(50) NOT NULL,
);

CREATE TABLE Airplanes (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AirlineId INT, FOREIGN KEY (AirlineId) REFERENCES Airline(Id),
    ModelNo INT(3)
);

CREATE TABLE Flights(
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  AirplaneId INT, FOREIGN KEY (AirplaneId) REFERENCES Airplane(Id),
  FlightNo INT(2),
  DepAirport VARCHAR(10) NOT NULL,
  DestAirport VARCHAR(10) NOT NULL,
  DepSchedule DATETIME,
  ArrSchedule DATETIME
);

CREATE TABLE Bookings (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FlightId INT, FOREIGN KEY (FlightId) REFERENCES Flight(Id),
  Name VARCHAR(200) NOT NULL,
  Surname VARCHAR(200) NOT NULL,
  Email VARCHAR(320) PRIMARY KEY,
  Seat INT (2)
);
