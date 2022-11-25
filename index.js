const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

// middleware
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


app.listen(5000, () => {
    console.log("Server has started on port 5000");
});
