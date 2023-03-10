 select Ticket_Status 
 from Passenger,Ticket 
 where First_Name = 'John' AND Last_Name = 'Johnson' AND Passenger.SSN == Ticket.PassengerSSN;
 
 select First_Name, Last_Name 
 from Passenger,TrainStatus,Ticket 
 where Ticket.Train_Date = '2/2/24' AND Ticket_Status = 'Booked';
 
select Train.Train_Number,Train_Name,Source,Destination,First_Name,Last_Name,Street_Address,Ticket_Type,Ticket_Status 
from Train, Passenger, TrainStatus, Ticket
where age >= '50' AND age <= '60' AND Train.Train_Number == TrainStatus.Train_Number;


select TrainStatus.Train_Number,Train_Name,Source,Destination,First_Name,Last_Name,Street_Address,Ticket_Type,Ticket_Status 
from Train, Passenger, TrainStatus, Ticket 
where age = '-5'AND Train.Train_Number == TrainStatus.Train_Number;


