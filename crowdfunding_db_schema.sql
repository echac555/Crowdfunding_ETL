-- Description: This file contains the schema for the crowdfunding database

-- Create the database
--CREATE DATABASE crowdfunding;

-- contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

-- category table
CREATE TABLE category (
    category_id VARCHAR(3) NOT NULL PRIMARY KEY,
    category VARCHAR(100)
);

-- subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(3) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(100)
);

-- campaigns table
CREATE TABLE campaigns (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT,
    campaign_name VARCHAR(100),
    description VARCHAR(255),
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(100),
    backers_count INT,
    country VARCHAR(10),
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(3),
    subcategory_id VARCHAR(3),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
    FOREIGN KEY (category_id) REFERENCES category(category_id)
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
  );

-- If required, drop the tables
--drop table contacts
--DROP TABLE contacts

--drop table subcategory
--DROP TABLE subcategory

--drop table category
--DROP TABLE category

--drop table campaigns
--DROP TABLE campaigns

