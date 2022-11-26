const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

////////////////
// middleware //
////////////////
app.use(cors());
app.use(express.json());

////////////
// Routes //
////////////

// get all teams
app.get("/teams", async(req, res) => {
    try {
        console.log("teams!");
        const allTeams = await pool.query("SELECT * FROM team");
        res.json(allTeams.rows);
    } catch (err) {
        console.error(err.message);
    }
});

// get all games
app.get("/games", async(req, res) => {
    try {
        console.log("games!");
        const allGames = await pool.query("SELECT * FROM game");
        res.json(allGames.rows);
    } catch (err) {
        console.error(err.message);
    }
});

// get all players
app.get("/players", async(req, res) => {
    try {
        console.log("players!");
        const allPlayers = await pool.query("SELECT * FROM player");
        res.json(allPlayers.rows);
    } catch (err) {
        console.error(err.message);
    }
});

// get all accounts
app.get("/accounts", async(req, res) => {
    try {
        console.log("accounts!");
        const allAccounts = await pool.query("SELECT * FROM account");
        res.json(allAccounts.rows);
    } catch (err) {
        console.error(err.message);
    }
});

// add a team
app.post("/teams", async(req, res) => {
    try {
        //const { body } = req.body;
        const body = req.body;
        const name = body["name"];
        const games = body["games"];
        const wins = body["wins"];
        const losses = body["losses"];
        const fDragon = body["fDragon"];
        const fTurret = body["fTurret"];
        const fHerald = body["fHerald"];
        const GD15 = body["GD15"];

        const newTeam = await pool.query(
            "INSERT INTO team (name, games, wins, losses, fDragon, fTurret, fHerald, GD15) VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *",
           [name, games, wins, losses, fDragon, fTurret, fHerald, GD15]); 
        res.json(newTeam.rows[0]);
    } catch(err) {
        console.error(err.message);
    }
});

app.listen(5000, () => {
    console.log("Server has started on port 5000");
});
