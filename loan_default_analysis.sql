select * from loan limit 10;
--Once the data is stored in the database, my focus as a data analyst shifts to business-driven analysis
--rather than running random SQL queries. At the SQL stage, I first perform data validation and sanity 
--checks such as row counts, null checks, default rates, and distribution analysis to ensure the data 
--is reliable, as SQL often acts as the source of truth for downstream users. 
--After validation, I use SQL to answer key business questions like identifying high-risk 
--customer segments, understanding default behavior, and analyzing features linked to risk. 
--These insights are then converted into meaningful metrics and KPIs, which later feed dashboards,
--reports, and presentations. In practice, while businesses provide high-level problem statements,
--the analyst independently translates them into relevant analytical questions and builds reusable 
--SQL queries or views that can be consistently used across dashboards and reports.

select count(*) from loan;

select "default", count(*) as total from loan group by "default";
--DEFAULT is a reserved keyword in SQL, so we need to write it inder double quoted inverted commas
--so that it can be recognized as column
--Will rename the column default
alter table loan rename column "default" to defaultflag ;
select * from loan limit 10;
drop table loan;

--📌 BASIC / FOUNDATION QUESTIONS
-- How many total loan records are there in the table?
select count(*) from loan;
--COUNT(*) counts all rows,Each row = one loan record

--How many customers defaulted vs non-defaulted?
select defaultflag, count(*) from loan
group by defaultflag;

--What is the overall default rate?
select defaultflag, round(count(*) * 100.0/(select count(*) from loan),2) as Rate from loan
group by defaultflag;


--What is the average income of customers?
select avg(income) from loan_sql;

--What is the average loan amount issued?
select avg(loanamount) from loan_sql;

--What is the average credit score of customers?
select avg(creditscore) from loan_sql;


📌 DEFAULT ANALYSIS (VERY IMPORTANT)

--What is the default rate by age group?
SELECT 
    age_group,
    COUNT(*) AS total_customers,
    SUM(defaultflag) AS total_defaults,
    ROUND(AVG(defaultflag) * 100, 2) AS default_rate_percent
FROM loan
GROUP BY age_group
ORDER BY age_group;

--What is the default rate by income group?
select * from loan limit 10;

select income_group, round(avg(defaultflag)*100,2) as defaultrate
from loan group by income_group;

--What is the default rate by credit score band?
select creditscore_band, round(avg(defaultflag)*100,2) as defaultrate
from loan group by creditscore_band;

--What is the default rate by loan amount group?
select loanamount_group, round(avg(defaultflag)*100,2) as defaultrate
from loan group by loanamount_group;

--What is the default rate by interest rate group?
select interestrate_group, round(avg(defaultflag)*100,2) as defaultrate
from loan group by interestrate_group

What is the default rate by DTI level?
select dti_level, round(avg(defaultflag)*100,2) as defaultrate
from loan group by dti_level

📌 RISK & BEHAVIOR ANALYSIS

--Do customers with higher interest rates default more?
YES

--Is default higher for customers with low employment stability?
select employment_stability, round(avg(defaultflag)*100,2) as defaultrate
from loan group by employment_stability
[Yes default higher for customers with low employment stability]

--How does loan term affect default?
select loanterm from loan limit 15

select loanterm, round(avg(defaultflag)*100,2) as defaultrate
from loan group by loanterm

--Do customers with more credit lines default more or less?
--Does income level reduce default risk?
--Does credit score strongly relate to default?

📌 SEGMENTATION QUESTIONS
--Which age group takes the highest loan amount?
--Which income group has the highest number of loans?
--Which credit score band contributes most to defaults?
--Which loan purpose (if available) has highest default?
--Which employment type has highest default rate?

📌 AGGREGATION & RANKING

--Top 5 income groups with highest default rate
--Top 5 loan amount groups by total defaults
--Rank credit score bands by default rate
--Rank interest rate groups by risk
--Rank employment stability groups by default probability

📌 BUSINESS INSIGHT QUESTIONS
--Which customer segment is most risky?
--Which customer segment is most profitable (low default, high loan amount)?
--Which features should the bank focus on to reduce default?
--Which group should be avoided or charged higher interest?

📌 DASHBOARD / REPORT-READY QUESTIONS

Monthly / segment-wise default summary (if time exists)

Overall KPIs: total loans, defaults, default %, avg loan amount

Default rate comparison across major customer segments

