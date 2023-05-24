--liquibase formatted sql
--changeset Vishal:01
CREATE DATABASE test1;

--changeset Vishal:02
USE test1;
CREATE TABLE FirstTable
(
    [Name] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

