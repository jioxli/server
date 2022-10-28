CREATE DATABASE nashorstats;

CREATE TABLE league(
    name_id SERIAL PRIMARY KEY,
    league_name VARCHAR(6),
    split CHAR(2),
    year INT,
    region VARCHAR(3)
    -- TODO: list of teams ? or separate table
);

CREATE TABLE team(
    team_id SERIAL PRIMARY KEY,
    team_code VARCHAR(3),
    region VARCHAR(3),
    name VARCHAR(255)
);

CREATE TABLE player(
    player_id SERIAL PRIMARY KEY,
    ign VARCHAR(50),
    teams VARCHAR(3)[], -- TODO: is this right?
);

CREATE TABLE game(
    game_id SERIAL PRIMARY KEY,
    team_red references team(team_id),
    team_blue references team(team_id),
    players_blue VARCHAR(40)[],
    players_red VARCHAR(40)[],
    kills_red INT,
    kills_blue INT,
    duration INT,
    red_win BOOLEAN
);
