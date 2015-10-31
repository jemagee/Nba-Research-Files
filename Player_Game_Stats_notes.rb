game:references
team:references
player:references
minutes/time played: ?? # in the json are listed as a string - minutes:seconds - parse that out - should it be all seconds and do the math or minutes as one column seconds as another, if one column of seconds and minutes - do division / modulo to get the minutes/seconds solution
fgm:integer
fga:integer
ftm:integer
fta:integer
oreb:integer
dreb:integer
ast:integer
stl:integer
blk:integer
to:integer
pf:integer
plusminus:integer?
boxscore json

#boxscore json has 3 keys 
	resource: => "boxscore"
	parameters: => {
		gameid = "game id number"
		startperiod: 1
		endperiod: 10
		startrange: 0
		endrange: 28800 #28800 is 480 minutes (28800/60)
		rangetype: 2
	}
	resultsSets: => [] #this array has two elements each element is a hash - 
		Hash 1
			name: "PlayersStats"
			headers: 
				headers[0] = "Game_id"
				headers[1] = "Team_id"
				headers[2] = "Team Abbreviation"
				headers[3] = "Team City"
				headers[4] = "Player_id"
				headers[5] = "Player Name"
				headers[6] = "Start_position" #Empty is player wasn't a starter
				headers[7] = "Comment"
				headers[8] = "Minutes" #Listed as MM:SS - need to parse this properly - either minues and seconds or just total seconds to convert later
				headers[9] = "FGM"
				headers[10] = "FGA"
				headers[11] = "FG_PCT" - SKIP
				headers[12] = "FG3M"
				headers[13] = "FG3A"
				headers[14] = "FG3_PCT" - SKIP
				headers[15] = "FTM"
				headers[16] = "FTA"
				headers[17] = "FT_PCT" - SKIP
				headers[18] = "OREB"
				headers[19] = "DREB"
				headers[20] = "REB" - SKIP
				headers[21] = "AST"
				headers[22] = "STL"
				headers[23] = "BLK"
				headers[24] = "TO"
				headers[25] = "PF"
				headers[26] = "PTS" - SKIP
				headers[27] = "Plus_Minus" - SKIP??
			rowSet:
				rowset is an array of arrays - each array member of rowSet is the array stats for one player in the game.  Each 'array of stats' has 27 indices corresponding to the header indices.
				I wonder if I can use zip to get them together more easily.
				It a player started (index 6) it indicates a positon, if a player did not start index 6 is 'blank' with "" listed instead.


After entering all the game and team information for a given date - then cycle through the games to get all the box score information from the json above for a given game.  Should starter be separated to a boolean T/F and if they were a starter it has a starter position.  Could do queries based on starter versus bench player I guess

This first step is to see if a player exists  - if not you create the player with the player_id and player name, and then you move into adding the players statistics for that game into the right table/model
	