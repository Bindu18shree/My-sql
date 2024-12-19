create database Loan;
use Loan;
create table LoanDetails(

Loan_ID int,
Loan_Type varchar(20),
Loan_Amount double,
Interest_Rate double,
Term int,
Start_Date varchar(30),
End_Date varchar(30),
Loan_Status varchar(20)
);

desc LoanDetails;