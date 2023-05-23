--liquibase formatted sql
--changeset public:03 
CREATE DATABASE test2;
CREATE TABLE SecondTable
(
    [Name] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

--rollback drop table FirstTable;
