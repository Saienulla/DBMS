-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-19 03:26:24.038

-- tables
-- Table: Football_Team
CREATE TABLE Football_Team (
    Team_id int NOT NULL,
    Team_name varchar(25) NOT NULL,
    Coach_name varchar(25) NOT NULL,
    Team_captain varchar(25) NOT NULL,
    set_of_players int NOT NULL,
    City varchar(25) NOT NULL,
    FL_id int NOT NULL,
    CONSTRAINT Football_Team_pk PRIMARY KEY (Team_id)
);

-- Table: Football_league
CREATE TABLE Football_league (
    FL_id int NOT NULL,
    FL_name varchar(25) NOT NULL,
    FL_year int NOT NULL,
    CONSTRAINT Football_league_pk PRIMARY KEY (FL_id)
);

-- Table: Game_played
CREATE TABLE Game_played (
    Game_id int NOT NULL,
    opp_team_name varchar(25) NOT NULL,
    date varchar(10) NOT NULL,
    status varchar(10) NOT NULL,
    Team_id int NOT NULL,
    CONSTRAINT Game_played_pk PRIMARY KEY (Game_id)
);

-- Table: player
CREATE TABLE player (
    Player_id int NOT NULL,
    Player_name varchar(25) NOT NULL,
    Skill_level varchar(25) NOT NULL,
    Position varchar(25) NOT NULL,
    Team_id int NOT NULL,
    CONSTRAINT player_pk PRIMARY KEY (Player_id)
);

-- foreign keys
-- Reference: Football_Team_Football_league (table: Football_Team)
ALTER TABLE Football_Team ADD CONSTRAINT Football_Team_Football_league FOREIGN KEY Football_Team_Football_league (FL_id)
    REFERENCES Football_league (FL_id);

-- Reference: Game_played_Football_Team (table: Game_played)
ALTER TABLE Game_played ADD CONSTRAINT Game_played_Football_Team FOREIGN KEY Game_played_Football_Team (Team_id)
    REFERENCES Football_Team (Team_id);

-- Reference: player_Football_Team (table: player)
ALTER TABLE player ADD CONSTRAINT player_Football_Team FOREIGN KEY player_Football_Team (Team_id)
    REFERENCES Football_Team (Team_id);

-- End of file.

