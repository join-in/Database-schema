CREATE KEYSPACE Game_player  WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };


select * from player;

CREATE TABLE player (  userid text PRIMARY KEY,  first_name text,  
	last_name text,  emails set<text>,  top_scores list<int>
);



INSERT INTO game_player.player (userid, emails,first_name,last_name,top_scores) 
VALUES ('ambi',{'ambi.notty@gmail.com'},'Ambi','Krishna',[5])
IF NOT EXISTS;

INSERT INTO game_player.player (userid, emails,first_name,last_name,top_scores) 
VALUES ('Suresh',{'sureshreddy.adi@gmail.com'},'Suresh','Reddy',[4])
IF NOT EXISTS; 

INSERT INTO game_player.player (userid, emails,first_name,last_name,top_scores) 
VALUES ('Sagar',{'vidyasagar.malla@outlook.com'},'Sagar','Vidya',[6])
IF NOT EXISTS; 

select userid, 
		emails,
		first_name,
		last_name,
		top_scores 
from game_player.player
where userid = 'ambi';


select userid, 
		emails,
		first_name,
		last_name,
		top_scores 
from game_player.player;
