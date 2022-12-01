CREATE TABLE team(
    tid SERIAL PRIMARY KEY,
    name VARCHAR(20),
    games INT,
    wins INT,	
    losses INT,
    fDragon REAL,	
    fTurret REAL,
    fHerald REAL,
    GD15 INT
);

\copy team(tid, name, games, wins, losses, fDragon, fTurret, fHerald, GD15) FROM 'C:\Users\imo20\OneDrive\Documents\Team_Stats_final.csv' DELIMITER ',' CSV;

ALTER TABLE team
ADD winrate REAL;

UPDATE team t
SET winrate = cast(t.wins as decimal) / t.games;

UPDATE team t
SET winrate = round(t.winrate::numeric, 2);
