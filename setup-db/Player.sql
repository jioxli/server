CREATE TABLE player(
	pid SERIAL PRIMARY KEY,
    ign VARCHAR(20),
    tid INT,
    team VARCHAR(20),
    position VARCHAR(10),
    kda REAL,
    kp REAL,
    GD10 INT,
    FOREIGN KEY (tid) REFERENCES team
);


