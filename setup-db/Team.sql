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


ALTER TABLE team
ADD winrate REAL;

UPDATE team t
SET winrate = cast(t.wins as decimal) / t.games;

UPDATE team t
SET winrate = round(t.winrate::numeric, 2);
