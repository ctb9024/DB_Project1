.mode csv
.read createTables.sql
.import Train.csv Train
.import Passenger.csv Passenger
.import TrainStatus.csv TrainStatus
.import Ticket.csv Ticket