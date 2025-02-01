CREATE TABLE employees (
    EmpID VARCHAR(10),
    Age INT,
    AgeGroup VARCHAR(50),
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(100),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(10),
    MonthlyIncome INT,
    SalarySlab VARCHAR(50),
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(10),
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

select * from employees;

DROP TABLE employees;

SELECT * FROM employees LIMIT 20;



SELECT 
    COUNT(*) - COUNT(EmpID) AS missing_EmpID,
    COUNT(*) - COUNT(Age) AS missing_Age,
    COUNT(*) - COUNT(AgeGroup) AS missing_AgeGroup,
    COUNT(*) - COUNT(Attrition) AS missing_Attrition,
    COUNT(*) - COUNT(BusinessTravel) AS missing_BusinessTravel,
    COUNT(*) - COUNT(DailyRate) AS missing_DailyRate,
    COUNT(*) - COUNT(Department) AS missing_Department,
    COUNT(*) - COUNT(DistanceFromHome) AS missing_DistanceFromHome,
    COUNT(*) - COUNT(Education) AS missing_Education,
    COUNT(*) - COUNT(EducationField) AS missing_EducationField,
    COUNT(*) - COUNT(EmployeeCount) AS missing_EmployeeCount,
    COUNT(*) - COUNT(EmployeeNumber) AS missing_EmployeeNumber,
    COUNT(*) - COUNT(EnvironmentSatisfaction) AS missing_EnvironmentSatisfaction,
    COUNT(*) - COUNT(Gender) AS missing_Gender,
    COUNT(*) - COUNT(HourlyRate) AS missing_HourlyRate,
    COUNT(*) - COUNT(JobInvolvement) AS missing_JobInvolvement,
    COUNT(*) - COUNT(JobLevel) AS missing_JobLevel,
    COUNT(*) - COUNT(JobRole) AS missing_JobRole,
    COUNT(*) - COUNT(JobSatisfaction) AS missing_JobSatisfaction,
    COUNT(*) - COUNT(MaritalStatus) AS missing_MaritalStatus,
    COUNT(*) - COUNT(MonthlyIncome) AS missing_MonthlyIncome,
    COUNT(*) - COUNT(SalarySlab) AS missing_SalarySlab,
    COUNT(*) - COUNT(MonthlyRate) AS missing_MonthlyRate,
    COUNT(*) - COUNT(NumCompaniesWorked) AS missing_NumCompaniesWorked,
    COUNT(*) - COUNT(Over18) AS missing_Over18,
    COUNT(*) - COUNT(OverTime) AS missing_OverTime,
    COUNT(*) - COUNT(PercentSalaryHike) AS missing_PercentSalaryHike,
    COUNT(*) - COUNT(PerformanceRating) AS missing_PerformanceRating,
    COUNT(*) - COUNT(RelationshipSatisfaction) AS missing_RelationshipSatisfaction,
    COUNT(*) - COUNT(StandardHours) AS missing_StandardHours,
    COUNT(*) - COUNT(StockOptionLevel) AS missing_StockOptionLevel,
    COUNT(*) - COUNT(TotalWorkingYears) AS missing_TotalWorkingYears,
    COUNT(*) - COUNT(TrainingTimesLastYear) AS missing_TrainingTimesLastYear,
    COUNT(*) - COUNT(WorkLifeBalance) AS missing_WorkLifeBalance,
    COUNT(*) - COUNT(YearsAtCompany) AS missing_YearsAtCompany,
    COUNT(*) - COUNT(YearsInCurrentRole) AS missing_YearsInCurrentRole,
    COUNT(*) - COUNT(YearsSinceLastPromotion) AS missing_YearsSinceLastPromotion,
    COUNT(*) - COUNT(YearsWithCurrManager) AS missing_YearsWithCurrManager
FROM employees;


SELECT EmpID, COUNT(*)
FROM employees
GROUP BY EmpID
HAVING COUNT(*) > 1;

SELECT *
FROM employees
WHERE EmpID = 'specific_empid';


SELECT EmpID, Age, AgeGroup, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome, 
       Education, EducationField, EmployeeCount, EmployeeNumber, EnvironmentSatisfaction, 
       Gender, HourlyRate, JobInvolvement, JobLevel, JobRole, JobSatisfaction, 
       MaritalStatus, MonthlyIncome, SalarySlab, MonthlyRate, NumCompaniesWorked, Over18, 
       OverTime, PercentSalaryHike, PerformanceRating, RelationshipSatisfaction, 
       StandardHours, StockOptionLevel, TotalWorkingYears, TrainingTimesLastYear, 
       WorkLifeBalance, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, 
       YearsWithCurrManager
FROM employees
WHERE EmpID IN (
    SELECT EmpID
    FROM employees
    GROUP BY EmpID
    HAVING COUNT(*) > 1
);


DELETE FROM employees
WHERE ctid NOT IN (
    SELECT MIN(ctid)
    FROM employees
    GROUP BY EmpID
);


SELECT
    COUNT(*) AS total_rows,
    COUNT(EmpID) AS non_null_empid,
    COUNT(Age) AS non_null_age,
    COUNT(AgeGroup) AS non_null_agegroup,
    COUNT(Attrition) AS non_null_attrition,
    COUNT(BusinessTravel) AS non_null_businesstravel,
    COUNT(DailyRate) AS non_null_dailyrate,
    COUNT(Department) AS non_null_department,
    COUNT(DistanceFromHome) AS non_null_distancefromhome,
    COUNT(Education) AS non_null_education,
    COUNT(EducationField) AS non_null_educationfield,
    COUNT(EmployeeCount) AS non_null_employeecount,
    COUNT(EmployeeNumber) AS non_null_employeenumber,
    COUNT(EnvironmentSatisfaction) AS non_null_environmentsatisfaction,
    COUNT(Gender) AS non_null_gender,
    COUNT(HourlyRate) AS non_null_hourlyrate,
    COUNT(JobInvolvement) AS non_null_jobinvolvement,
    COUNT(JobLevel) AS non_null_joblevel,
    COUNT(JobRole) AS non_null_jobrole,
    COUNT(JobSatisfaction) AS non_null_jobsatisfaction,
    COUNT(MaritalStatus) AS non_null_maritalstatus,
    COUNT(MonthlyIncome) AS non_null_monthlyincome,
    COUNT(SalarySlab) AS non_null_salaryslab,
    COUNT(MonthlyRate) AS non_null_monthlyrate,
    COUNT(NumCompaniesWorked) AS non_null_numcompaniesworked,
    COUNT(Over18) AS non_null_over18,
    COUNT(OverTime) AS non_null_overtime,
    COUNT(PercentSalaryHike) AS non_null_percentsalaryhike,
    COUNT(PerformanceRating) AS non_null_performancerating,
    COUNT(RelationshipSatisfaction) AS non_null_relationshipsatisfaction,
    COUNT(StandardHours) AS non_null_standardhours,
    COUNT(StockOptionLevel) AS non_null_stockoptionlevel,
    COUNT(TotalWorkingYears) AS non_null_totalworkingyears,
    COUNT(TrainingTimesLastYear) AS non_null_trainingtimeslastyear,
    COUNT(WorkLifeBalance) AS non_null_worklifebalance,
    COUNT(YearsAtCompany) AS non_null_yearsatcompany,
    COUNT(YearsInCurrentRole) AS non_null_yearsincurrentrole,
    COUNT(YearsSinceLastPromotion) AS non_null_yearssincelastpromotion,
    COUNT(YearsWithCurrManager) AS non_null_yearswithcurrmanager
FROM employees;


select agegroup from employees;

SELECT DISTINCT businesstravel FROM employees;



UPDATE employees
SET BusinessTravel = 'Non_Travel'
WHERE BusinessTravel = 'Non-Travel';





