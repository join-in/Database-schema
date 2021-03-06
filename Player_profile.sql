CREATE KEYSPACE Game_player  WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };


CREATE TABLE player (  userid text PRIMARY KEY,  first_name text,  
	last_name text,  email set<text>,  top_score list<int>
); 




INSERT INTO game_player.player (userid, email,first_name,last_name,top_score) 
VALUES ('ambi',{'ambi.notty@gmail.com'},'Ambi','Krishna',[5])
IF NOT EXISTS;

INSERT INTO game_player.player (userid, email,first_name,last_name,top_score) 
VALUES ('Suresh',{'sureshreddy.adi@gmail.com'},'Suresh','Reddy',[4])
IF NOT EXISTS; 

INSERT INTO game_player.player (userid, email,first_name,last_name,top_score) 
VALUES ('Sagar',{'vidyasagar.malla@outlook.com'},'Sagar','Vidya',[6])
IF NOT EXISTS; 

select userid, 
		email,
		first_name,
		last_name,
		top_score 
from game_player.player
where userid = 'ambi';


select userid, 
		email,
		first_name,
		last_name,
		top_score 
from game_player.player;
