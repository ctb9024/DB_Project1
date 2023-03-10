 select Ticket_Status from Passenger,Ticket where First_Name = 'John' AND Last_Name = 'Johnson' AND Passenger.SSN == Ticket.PassengerSSN;
 select First_Name, Last_Name from Passenger,TrainStatus,Ticket where Ticket.Train_Date = '2/2/24' AND Ticket_Status = 'Booked';
 
