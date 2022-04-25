-- create database hospital;
use hospital;
SET SQL_SAFE_UPDATES = 0;

create table patient(patient_ID varchar(10), name varchar(30), room_number varchar (9), admit_date varchar(9), admit_reason varchar(30));
create table chart(patient_ID varchar(10), age varchar (8), symptoms varchar (30), allergies varchar(30), medical_history varchar(40), medications varchar(40), family_illnesses varchar(40));
create table doctor(staff_id varchar(10), specialty varchar(20), branch varchar(20), name varchar (30), address varchar (40));
create table nurse(staff_id varchar(10), branch varchar(20), name varchar (30),address varchar (40));
create table clerk(staff_id varchar(10), name varchar (30), address varchar (40));
create table room(room_number varchar(10), wing_number varchar(5), occupied_status varchar(1), patient_ID varchar(10));
create table hospital_wing(wing_number varchar(5), care_type varchar(20));