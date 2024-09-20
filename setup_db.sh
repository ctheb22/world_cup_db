PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"

($PSQL "CREATE TABLE teams(team_id SERIAL PRIMARY KEY, name VARCHAR(45) NOT NULL)")
($PSQL "CREATE TABLE games(game_id SERIAL PRIMARY KEY, round VARCHAR(45) NOT NULL, winner_id INT REFERENCES teams(team_id), opponent_id INT REFERENCES teams(team_id), opponent_goals INT NOT NULL, winner_goals INT NOT NULL, year INT NOT NULL)")
