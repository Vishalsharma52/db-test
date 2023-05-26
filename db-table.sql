--liquibase formatted sql

--changeset Vishal:01
CREATE DATABASE dbtest;

--changeset Vishal:02
USE dbtest;
CREATE TABLE FirstTable
(
    [Name] VARCHAR(100) NOT NULL,
    [LastName] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

