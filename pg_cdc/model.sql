CREATE TABLE customer (
    id bigserial not null,
    first_name text not null,
    last_name text not null,
    email text not null,
    created_at timestamp with time zone not null default now(),
    updated_at timestamp with time zone not null default now(),
    CONSTRAINT pk_customer PRIMARY KEY (id)
);



INSERT INTO customer(first_name, last_name, email) VALUES('FirstName1', 'LastName1', 'firstname1@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName2', 'LastName2', 'firstname2@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName3', 'LastName3', 'firstname3@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName4', 'LastName4', 'firstname4@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName5', 'LastName5', 'firstname5@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName6', 'LastName6', 'firstname6@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName7', 'LastName7', 'firstname7@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName8', 'LastName8', 'firstname8@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName9', 'LastName9', 'firstname9@test.com');
INSERT INTO customer(first_name, last_name, email) VALUES('FirstName10', 'LastName10', 'firstname10@test.com');