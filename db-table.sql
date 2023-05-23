--liquibase formatted sql
CREATE DATABASE test1;
--changeset public:03 
CREATE TABLE FirstTable
(
    [Name] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

--rollback drop table FirstTable;
