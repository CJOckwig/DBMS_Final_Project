-- create database hospital;
use hospital;
SET SQL_SAFE_UPDATES = 0;

 drop table patient;
 drop table chart;
 drop table doctor;
 drop table nurse;
 drop table clerk;
 drop table room;
 drop table hospital_wing;
 drop table visits;
 drop table clerk_wing;
 drop table works;
 drop table wing_room;
 drop table stays_in;
 drop table records;
 drop table treats;
 drop table patient_Chart;

-- Schemas
 create table patient(patient_ID varchar(10), name varchar(30), room_number varchar (9), admit_date varchar(9), admit_reason varchar(50));
 create table chart(chart_id varchar(10), patient_ID varchar(10), age varchar (8), symptoms varchar (100), allergies varchar(30), medical_history varchar(40), medications varchar(40), family_illnesses varchar(40));
 create table doctor(staff_id varchar(10), specialty varchar(20), branch varchar(20), name varchar (30), address varchar (40));
 create table nurse(staff_id varchar(10), specialty varchar(20), name varchar (30),address varchar (40));
 create table clerk(staff_id varchar(10), name varchar (30), address varchar (40), wing_number varchar(5));
 create table room(room_number varchar(10), wing_number varchar(5), occupied_status varchar(1), patient_ID varchar(10));
 create table hospital_wing(wing_number varchar(5),wing_name varchar(20), care_type varchar(20));
 create table visits (admit_date varchar(9), admit_reason varchar(50), depart_date varchar(9), symptoms varchar (100));

-- Relations
 create table clerk_wing(wing_number varchar(5), staff_id varchar(10));
 create table works(staff_id varchar(10), wing_number varchar(5));
 create table wing_room(wing_number varchar(5), room_number varchar(10));
 create table stays_in( patient_ID varchar(10), room_number varchar(10));
 create table records (admit_date varchar(9), patient_ID varchar(10));
 create table treats (staff_id varchar(10),patient_ID varchar(10));
 create table patient_Chart(chart_id varchar(10), patient_ID varchar(10));

insert into patient values("p-1", "Steven Strange", "134", "4/24/22", "Car Crash, broken arms, Concussion");
insert into patient values("p-2", "Bruce Banner", "122", "4/24/22", " muscle pain, nausea, jaundice");
insert into patient values("p-3", "Peter Parker", "133", "4/24/22", "Coughing up black mucus");
insert into patient values("p-4", "Selina Kyle", "144", "4/24/22", "anaphylectic shock caused by cat allergy");
insert into patient values("p-5", "Oliver Queen", "122", "4/24/22", "finger arthritis");
insert into patient values("p-6", "Wade Wilson", "122", "4/24/22", "Cancer");
insert into patient values("p-7", "Barry Allen", "122", "4/24/22", "Severe Fatigue, Cough");
insert into patient values("p-8", "Bruce Wayne", "122", "4/24/22", "Insomnia, Cough");
insert into patient values("p-9", "Steve Rogers", "122", "4/24/22", "Dementia");
insert into patient values("p-9", "Steve Rogers", "122", "4/24/22", "Dementia");
insert into patient values("p-9", "Tony Stark", "122", "4/24/22", "Heart Palpitations, extreme fatigue");


-- create table chart
-- (chart_id varchar(10), patient_ID varchar(10), 
-- age varchar (8), symptoms varchar (30), allergies varchar(30), 
-- medical_history varchar(40), medications varchar(40), family_illnesses varchar(40));
insert into chart values("c-1", "p-1", "43", "cough, broken arms, dazed and confused", "NO ALLERGIES", "NO SIGNIFICANT HISTORY", "NO MEDICATION", "NO FAMILY ILLNESS");
insert into chart values("c-2", "p-2", "39", "extreme fatigue, muscle pain, overall 'green'", "NO ALLERGIES", "Gamma Exposure in 2012", "NO MEDICATION", "NO FAMILY ILLNESS");
insert into chart values("c-3", "p-3", "21", "Severe Cough, tight muscles, extreme fatigue, spider bite, light sensitivity", "ALLERGIC TO SPIDERS AND PENICLLIN", "Bit by radioactive spider in 2017", "NO MEDICATION", "PARENTS DIED IN CAR ACCIDENT");
insert into chart values("c-4", "p-4", "29", "Severe reaction to cat scratch", "ALLERGIC TO CATS", "NO SIGNIFICANT HISTORY", "20 mg lexapro", "NO FAMILY ILLNESS");
insert into chart values("c-5", "p-5", "32", "arthritis in fingers", "NO ALLERGIES", "Gunshot Wound 2012, arthritis ", "cortizol shot", "NO FAMILY ILLNESS");


