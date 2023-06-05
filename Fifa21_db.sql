CREATE TABLE "player_urls" (
  "player_id" integer,
  "photoUrl" varchar(100),
  "playerUrl" varchar(100)
);

CREATE TABLE "players" (
  "player_id" integer PRIMARY KEY,
  "Full_name" varchar,
  "Age" integer(2),
  "Height" integer,
  "Weight" integer,
  "foot" varchar(5),
  "Nationality" sprinvarchar(20)
);

CREATE TABLE "player_team" (
  "player_id" integer PRIMARY KEY,
  "Team" varchar(20),
  "Best_position" varchar(3),
  "Year_start" date,
  "Year_end" date,
  "status_player" varchar(10),
  "Duration" integer
);

CREATE TABLE "player_value" (
  "player_id" integer PRIMARY KEY,
  "Value" integer,
  "Wage" integer,
  "Release_Clause" integer,
  "IR" integer
);

CREATE TABLE "player_attacking" (
  "player_id" integer PRIMARY KEY,
  "Attacking" integer,
  "Crossing" integer,
  "Finishing" integer,
  "Heading_Accuracy" integer,
  "Short_Passing" integer,
  "Volleys" integer
);

CREATE TABLE "player_skill" (
  "player_id" integer PRIMARY KEY,
  "Skill" integer,
  "Dribbling" integer,
  "Curve" integer,
  "FK_Accuracy" integer,
  "Long_Passing" integer,
  "Ball_Control" integer
);

CREATE TABLE "player_movement" (
  "player_id" integer PRIMARY KEY,
  "Movement" integer,
  "Acceleration" integer,
  "Sprint_Speed" integer,
  "Agility" integer,
  "Reactions" integer,
  "Balance" integer
);

CREATE TABLE "player_power" (
  "player_id" integer PRIMARY KEY,
  "Power" integer,
  "Shot_Power" integer,
  "Jumping" integer,
  "Stamina" integer,
  "Strength" integer,
  "Long_Shots" integer
);

CREATE TABLE "player_mentality" (
  "player_id" integer PRIMARY KEY,
  "Mentality" integer,
  "Aggression" integer,
  "Interceptions" integer,
  "Positioning" integer,
  "Vision" integer,
  "Penalties" integer
);

CREATE TABLE "player_goalkeeping" (
  "player_id" integer PRIMARY KEY,
  "Goalkeeping" integer,
  "GK_Diving" integer,
  "GK_Handling" integer,
  "GK_Kicking" integer,
  "GK_Positioning" integer,
  "GK_Reflexes" integer
);

CREATE TABLE "player_total_stats" (
  "player_id" integer PRIMARY KEY,
  "Total_Stats" integer,
  "Attacking" integer,
  "Skill" integer,
  "Movement" integer,
  "Power" integer,
  "Mentality" integer,
  "Defender" integer,
  "Goalkeeping" integer
);

CREATE TABLE "player_defender" (
  "player_id" integer PRIMARY KEY,
  "Defender" integer,
  "Composure" integer,
  "Defending" integer,
  "Marking" integer,
  "Standing_Tackle" integer,
  "Sliding_Tackle" integer
);

CREATE TABLE "player_build" (
  "player_id" integer PRIMARY KEY,
  "Base_Stats" integer,
  "PAC" integer,
  "SHO" integer,
  "PAS" integer,
  "DRI" integer,
  "DEF" integer,
  "PHY" integer,
  "Hits" integer
);

CREATE TABLE "player_dynamic" (
  "player_id" integer PRIMARY KEY,
  "Best_position" varchar(3),
  "First_position" varchar(3),
  "Second_position" varchar(3),
  "third_position" varchar(3),
  "W_F" integer,
  "SM" integer,
  "Level_A_W" integer,
  "Level_D_W" integer
);

ALTER TABLE "player_attacking" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_mentality" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_skill" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_movement" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_goalkeeping" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_power" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_defender" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_build" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_dynamic" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_total_stats" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_value" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_team" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "player_urls" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("player_id");

ALTER TABLE "players" ADD FOREIGN KEY ("Full_name") REFERENCES "players" ("Height");
