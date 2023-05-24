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
    ('Jane Smith', 'janesmith@example.com', '9876543210', '1995-02-15')
     ;
     
--changeset Vishal:03

-- Insert random entries into the table
INSERT INTO FirstTable ([Name], [Email], [MobileNumber], [DOB])
VALUES
    ('Michael Johnson', 'michaeljohnson@example.com', '5555555555', '1988-07-10'),
    ('Sarah Davis', 'sarahdavis@example.com', '9999999999', '1992-11-30'),
    ('Robert Anderson', 'robertanderson@example.com', '7777777777', '1985-04-25')
    ;
