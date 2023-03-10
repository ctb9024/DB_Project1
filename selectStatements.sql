/*
These are our select statements, grouped by question

*/

/*Input a passengers name and retrieve all trains they are booked on*/
select Ticket_Status 
from Passenger,Ticket 
where First_Name = 'John' AND Last_Name = 'Johnson' AND Passenger.SSN = Ticket.PassengerSSN;


/*Input date and retrieve all passengers with Booked tickets*/
select First_Name, Last_Name 
from Passenger,TrainStatus,Ticket
where Ticket.Train_Date = '2/2/2024' AND Ticket_Status = 'Booked' AND Passenger.SSN = Ticket.PassengerSSN AND Ticket.Train_Number = TrainStatus.Train_Number;


/*Select all passengers ages 50-60 and retrieve train information and passenger information*/
select Train.Train_Number,Train_Name,Source,Destination,First_Name,Last_Name,Street_Address,Ticket_Type,Ticket_Status 
from Train, Passenger, TrainStatus, Ticket
where age >= 50 AND age <= 60 AND Train.Train_Number = TrainStatus.Train_Number AND TrainStatus.Train_Number = Ticket.Train_Number AND Passenger.SSN = Ticket.PassengerSSN;


/*not entirely sure what this was for*/
/*
select TrainStatus.Train_Number,Train_Name,Source,Destination,First_Name,Last_Name,Street_Address,Ticket_Type,Ticket_Status 
from Train, Passenger, TrainStatus, Ticket 
where age = 120 AND Train.Train_Number == TrainStatus.Train_Number;
*/

/*List Train name, date, and number of passengers (very vague wording)*/
select Train.Train_Name , TrainStatus.Train_Date, Premium_Occupied + General_Occupied AS totalPassenger
from Train ,TrainStatus
where Train.Train_Number = TrainStatus.Train_Number;


/*Enter a train and retrieve all passengers with confirmed status on that train*/
select First_Name, Last_Name
from Passenger, Train, Ticket
where Train_Name = 'Thomas' AND Ticket_Status = 'Booked' AND Passenger.SSN = Ticket.PassengerSSN AND Ticket.Train_Number = Train.Train_Number;


/*List all waitlisted passengers and the names of their trains*/
select First_Name, Last_Name, Train_Name
from Passenger, Train, Ticket
where Ticket_Status = 'WaitL' AND Passenger.SSN = Ticket.PassengerSSN AND Ticket.Train_Number = Train.Train_Number;


/*List all passengers with the phone area code '605' and list in descending order*/
select First_Name, Last_Name
from Passenger
where substr(Phone,1,3) = '605'
ORDER BY Last_Name DESC;

/*List names of passengers traveling on Thursdays in ascending order*/
select First_Name, Last_Name
from Passenger,Ticket, Train
where Ticket_Status = 'Booked' AND Days_Available LIKE '%Th%' AND Passenger.SSN = Ticket.PassengerSSN AND Ticket.Train_Number = Train.Train_Number
ORDER BY First_Name,Last_Name ASC;