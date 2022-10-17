CREATE DATABASE nashorstats;

CREATE TABLE league(
    name_id CHAR(3) SERIAL PRIMARY KEY,
    split CHAR(2),
    year INT(4),
    region VARCHAR(3)
    -- TODO: list of teams ? or separate table
);

CREATE TABLE team(
    team_id VARCHAR(3) SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE player(
    player_id SERIAL PRIMARY KEY,
    ign VARCHAR(50),
    teams VARCHAR(3)[], -- TODO: is this right?
);
