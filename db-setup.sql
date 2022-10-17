CREATE DATABASE nashorstats;

CREATE TABLE league(
    name_id CHAR(3) PRIMARY KEY,
    split CHAR(2),
    year INT(4),
    region VARCHAR(3)
    -- TODO: list of teams ? or separate table
);

CREATE TABLE team(
    teamid VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255)
);
