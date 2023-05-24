--liquibase formatted sql

--changeset Vishal:01
USE dbtest;
CREATE TABLE FirstTable
(
    [Name] VARCHAR(100) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [MobileNumber] VARCHAR(20) NULL,
    [DOB] DATE NULL
);

--changeset Vishal:02

INSERT INTO FirstTable ([Name], [Email], [MobileNumber], [DOB])
VALUES
    ('John Doe', 'johndoe@example.com', '1234567890', '1990-01-01'),
    ('Jane Smith', 'janesmith@example.com', '9876543210', '1995-02-15'),
     ;
