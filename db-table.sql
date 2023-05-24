--liquibase formatted sql
--changeset public:01
CREATE DATABASE test1;
USE test1;
CREATE TABLE FirstTable
(
    [Name] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

--rollback drop table FirstTable;
