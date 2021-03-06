-- create database hospital;
use hospital;
SET SQL_SAFE_UPDATES = 0;

/*
 drop table patient;
 drop table chart;
 drop table doctor;
 drop table nurse;
 drop table clerk;
 drop table room;
 drop table hospital_wing;
 drop table visits;
 drop table treats;
 drop table patient_Chart;
*/
-- Schemas
 create table patient(patient_ID varchar(10), first_name varchar(30), last_name varchar(30), room_number varchar (9),wing_number varchar(5), primary key(patient_ID));
 create table chart(chart_id varchar(10), patient_ID varchar(10), age varchar (8), allergies varchar(100), medical_history varchar(100), medications varchar(40), family_illnesses varchar(40), primary key(chart_id));
 create table doctor(staff_id varchar(10), specialty varchar(20), name varchar (30), address varchar (40), primary Key(staff_id));
 create table nurse(staff_id varchar(10), specialty varchar(20), name varchar (30),address varchar (40), primary key(staff_id));
 create table clerk(staff_id varchar(10), name varchar (30), address varchar (40), wing_number varchar(5), primary key(staff_id));
 create table room(room_number varchar(10), wing_number varchar(5), occupied_status varchar(1), patient_ID varchar(10), primary key(room_number, patient_id));
 create table hospital_wing(wing_number varchar(5),wing_name varchar(20), care_type varchar(20), primary key(wing_number));
 create table visits (patient_ID varchar(10), admit_date varchar(9), admit_reason varchar(50), depart_date varchar(9), symptoms varchar (100), primary key (admit_date, patient_id));

-- Relations
create table treats (staff_id varchar(10), patient_ID varchar(10), primary key(patient_id));
create table patient_Chart(chart_id varchar(10), patient_ID varchar(10));
 
insert into patient values("p-1", "Steven","Strange", "134","1");
insert into patient values("p-2", "Bruce","Banner", "156","1");
insert into patient values("p-3", "Peter","Parker", "079","3");
insert into patient values("p-4", "Selina","Kyle", "156","1");
insert into patient values("p-5", "Oliver","Queen", "334","3");
insert into patient values("p-6", "Wade","Wilson", "132","2");
insert into patient values("p-7", "Barry","Allen", "334","3");
insert into patient values("p-8", "Bruce","Wayne", "111","2");
insert into patient values("p-9", "Steve","Rogers", "001","4");
insert into patient values("p-10", "Tony","Stark", "001", "4");
insert into patient values("p-11", "Clark","Kent", "233", "4");

-- create table chart
-- (chart_id varchar(10), patient_ID varchar(10), 
-- age varchar (8), symptoms varchar (30), allergies varchar(30), 
-- medical_history varchar(40), medications varchar(40), family_illnesses varchar(40));
insert into chart values("c-1", "p-1", "43", "NO ALLERGIES", "NO SIGNIFICANT HISTORY", "NO MEDICATION", "Diabetes(P)");
insert into chart values("c-2", "p-2", "39",  "NO ALLERGIES", "Gamma Exposure in 2012", "NO MEDICATION", "NO FAMILY ILLNESS");
insert into chart values("c-3", "p-3", "21", "ALLERGIC TO SPIDERS AND PENICLLIN", "Bit by radioactive spider in 2017", "NO MEDICATION", "PARENTS DIED IN CAR ACCIDENT");
insert into chart values("c-4", "p-4", "29", "ALLERGIC TO CATS", "NO SIGNIFICANT HISTORY", "20 mg lexapro", "NO FAMILY ILLNESS");
insert into chart values("c-5", "p-5", "32", "NO ALLERGIES", "Gunshot Wound 2012, arthritis ", "cortisone shot", "NO FAMILY ILLNESS");
insert into chart values("c-6", "p-6", "29", "ALLERGIC TO CATS", "NO SIGNIFICANT HISTORY", "20 mg lexapro", "NO FAMILY ILLNESS");
insert into chart values("c-7", "p-7", "29",  "NO ALLERGIES", "NO SIGNIFICANT HISTORY", "NO MEDICATION", "crohns(M)");
insert into chart values("c-8", "p-8", "44", "NO ALLERGIES", "Body Covered in scar tissue", "NO MEDICATION", "NO FAMILY ILLNESS");
insert into chart values("c-9", "p-9", "88", "ALLERGIC TO CATS", "NO SIGNIFICANT HISTORY", "20 mg lexapro", "NO FAMILY ILLNESS");
insert into chart values("c-10", "p-10", "29", "NO ALLERGIES", "Hit by bomb Shrapnel (2012), metal plate located in chest", "NO MEDICATION", "crohns(M)");
insert into chart values("c-11", "p-11", "29", "kyptonite", "NO SIGNIFICANT HISTORY", "NO MEDICATION", "NO TRACEABLE FAMILY");


-- create table nurse(staff_id varchar(10), specialty varchar(20), name varchar (30),address varchar (40));
insert into nurse values("S-N-1", "infant care", "Carol Baskins", "12321 super road, MN");
insert into nurse values("S-N-2", "infant care", "Joe Exotic", "12112 zoo Street, MN");
insert into nurse values("S-N-3", "urgent care", "Michaela Myers", "433 Halloween, MN");
insert into nurse values("S-N-4", "infant care", "Andrea Gonzo", "12321 super road, MN");
insert into nurse values("S-N-5", "elderly care", "Lois Lane", "7654 big boulevard, MN");

-- create table doctor(staff_id varchar(10), specialty varchar(20), 
--  name varchar (30), address varchar (40));
insert into doctor values("S-D-1", "Cancer", "Shaggy Rodgers", "375 Jackrabbit Ave, MN");
insert into doctor values("S-D-2", "infant care", "Daphne Blake", "1245 Hanted Rd, MN");
insert into doctor values("S-D-3", "Family Medicine", "Fred Jones", "1245 Hanted Rd, MN");
insert into doctor values("S-D-4", "General Praction", "Velma Dinkley", "9975 dreamview ave, MN");

 -- create table room(room_number varchar(10), wing_number varchar(5), occupied_status varchar(1), patient_ID varchar(10));

insert into room values("134", "1", "2", "p-1");
insert into room values("156", "1", "1", "p-2");
insert into room values("079", "3", "1", "p-3");
insert into room values("134", "1", "2", "p-4");
insert into room values("334", "3", "1", "p-5");
insert into room values("132", "2", "1", "p-6");
insert into room values("263", "2", "1", "p-7");
insert into room values("111", "2", "1", "p-8");
insert into room values("001", "2", "2", "p-9");
insert into room values("001", "4", "2", "p-10");
insert into room values("233", "4", "1", "");
insert into room values("005", "4", "0", "");
insert into room values("007", "4", "0", "");
insert into room values("008", "4", "0", "");

-- create table hospital_wing(wing_number varchar(5),wing_name varchar(20), care_type varchar(20));
insert into hospital_wing values ("1", "North", "infant care");
insert into hospital_wing values ("2", "East", "general care");
insert into hospital_wing values ("3", "South", "Cancer");
insert into hospital_wing values ("4", "West", "urgent care");


-- create table visits (patient_ID varchar(10), admit_date varchar(9), admit_reason varchar(50), depart_date varchar(9), symptoms varchar (100), primary key (admit_date, patient_id));
insert into visits values("p-1", "4/24/22", "Car Crash, broken arms, Concussion","", "cough, broken arms, dazed and confused");
insert into visits values("p-2", "4/17/22", "Extreme muscle cramping","", "extreme fatigue, muscle pain, overall 'green'");
insert into visits values("p-3", "4/23/22", "Coughing up black mucus", "", "cough, fever, headache");
insert into visits values("p-4", "4/22/22", "anaphylectic shock caused by cat allergy", "", "Fever, Rash");
insert into visits values("p-5", "4/24/22", "finger arthritis", "", "stiff joints");
insert into visits values("p-6", "4/21/22", "Cancer", "", "Fever, headache, cough" );
insert into visits values("p-7", "4/25/22", "'jittery', heart palpitation's, seizures", "","Severe Fatigue, Cough");
insert into visits values("p-8", "4/22/22", "Insomnia","", "Insomnia, Fever, headache" );
insert into visits values("p-9", "4/24/22", "Dementia", "", "Confusion, arthritis, mild cough");
insert into visits values("p-10","4/22/22", "Heart Palpitations, extreme fatigue", "", "Heartburn, cough, heart palpitations");
insert into visits values("p-11", "4/24/22", "Heart Palpitations, extreme fatigue", "","Heavy Chest, difficulty breathing, red eyes");

-- create table clerk(staff_id varchar(10), name varchar (30), address varchar (40), wing_number varchar(5), primary key(staff_id));
insert into clerk values("S-C-1", "Peter Venkman", "1771 Groundhog Ave, MN", "1");
insert into clerk values("S-C-2", "Ray Stantz", "1978 Blues Rd, MN", "2");
insert into clerk values("S-C-3", "Egon Spengler", "8181 Stripes Rd, MN", "4");
insert into clerk values("S-C-4", "Winston Zeddemore", "1234 Twinkie St, MN", "3");

Select first_name, last_name, age
From chart natural join patient
Where patient_id = 'p-1'

