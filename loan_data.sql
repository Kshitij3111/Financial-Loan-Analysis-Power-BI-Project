create database Bank_Loan;
use Bank_Loan;


select * from loan_data;

# 1.1 Total Loan Applications

SELECT 
    COUNT(id) AS Total_Applications
FROM
    loan_data;

# 1.2 MTD Loan Applications

select count(id) as MTD_Total_Applications from loan_data
where Month(issue_date) = 12;

# 1.3 Prev MTD Loan Applications

select count(id) as PMTD_Total_Applications from loan_data
where Month(issue_date) = 11;

# 2.1. Total Funded Amount

select sum(loan_amount) as Total_Funded_Amount from loan_data;

# 2.2 MTD Total Funded Amount

select sum(loan_amount) as MTD_Total_Funded_Amount from loan_data
where month(issune_date) = 12;

# 2.3 Prev MTD Total Funded Amount

select sum(loan_amount) as PMTD_Total_Funded_Amount from loan_data
where month(issune_date) = 11;

# 3.1 Total Amount Received

select sum(total_payment) as Total_Amount_Received from loan_data;

# 3.2 MTD Total Amount Received

select sum(total_payment) as MTD_Total_Amount_Received from loan_data
where month(issue_date) = 12;

# 3.3 Prev MTD Total Amount Received

select sum(total_payment) as PMTD_Total_Amount_Received from loan_data
where month(issue_date) = 11;

# 4.1 Average Interest Rate

select Round(avg(int_rate) * 100, 2) as Avg_Interest_Rate from loan_data;

# 4.2 MTD Average Interest Rate

select Round(avg(int_rate) * 100, 2) as MTD_Avg_Interest_Rate from loan_data
where month(issue_date) = 12;

# 4.3 PMTD Average Interest Rate

select Round(avg(int_rate) * 100, 2) as PMTD_Avg_Interest_Rate from loan_data
where month(issue_date) = 11;

# 5.1 Average Debt-to-Income Ratio

select Round(avg(dti) * 100, 2) as Avg_Dti from loan_data;

# 5.2 MTD Average Debt-to-Income Ratio

select Round(avg(dti) * 100, 2) as MTD_Avg_Dti from loan_data
where month(issue_date) = 12;

# 5.3 PMTD Average Debt-to-Income Ratio

select Round(avg(dti) * 100, 2) as PMTD_Avg_Dti from loan_data
where month(issue_date) = 11;

#Good Loan KPIs:
# 1. Good Loan Application Percentage:

select (count(case when loan_status = 'Fully Paid' OR loan_status = 'Current' then id end)* 100)/ count(id) as Good_Loan_Percentage from loan_data;

# 2. Good Loan Application

select count(id) as Good_Loan_Applications from loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';

# 3. Good Loan Funded Amount

select sum(loan_amount) as Good_Loan_Funded_Amount from loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';

# 4. Good Loan Total Received Amount

select sum(total_payment) as Good_Loan_Received_Amount from loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current';

#Bad Loan KPI's 
# 1. Bad Loan Application Percentage

select (count(case when loan_status = 'Charged Off' then id end)* 100)/ count(id) as Bad_Loan_Percentage from loan_data;

# 2. Bad Loan Applications

select count(id) as Bad_Loan_Applications from loan_data
where loan_status = 'Charged Off';

# 3. Bad Loan Funded Amount

select sum(loan_amount) as Bad_Loan_Applications from loan_data
where loan_status = 'Charged Off';

# 4. Bad Loan Total Received Amount

select sum(total_payment) as Bad_Loan_Received_Amount from loan_data
where loan_status = 'Charged Off';

# Loan Status Grid View

select 
		loan_status, 
		count(id) as Total_Loan_Applications, 
		sum(total_payment) as Total_Amount_received, 
		sum(loan_amount) as Total_Funded_Amount,
		avg(int_rate) as Interest_Rate, 
		avg(dti) as DTI 
	from 
		loan_data
	group by 
		loan_status;

# MTD Loan Status Grid View
select 
		loan_status, 
		sum(total_payment) as MTD_Total_Amount_received, 
		sum(loan_amount) as MTD_Total_Funded_Amount
	from loan_data
    where month(issue_date) = 12
	group by loan_status;

# Dashboard 2
# 1. Monthly Trends by Issue Date

select 
	month(issue_date) as Month_Number,
	monthname(issue_date) as Month_Name,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by month(issue_date), monthname(issue_date)
order by month(issue_date);

# 2. Regional Analysis by State

select 
	address_state,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by address_state
order by address_state;

# 3. Loan Term Analysis

select 
	term,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by term
order by term;

# 4. Employee Length Analysis

select 
	emp_length,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by emp_length
order by emp_length;

# 5. Loan Purpose Breakdown

select 
	emp_length,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by emp_length
order by emp_length;

# 6. Home Ownership Analysis

select 
	home_ownership,
    count(id) as Total_Loan_Applications,
    sum(loan_amount) as Total_funded_Amount,
    sum(total_payment) as Total_Received_Amount
from loan_data
group by home_ownership
order by Count(id) DESC;
