standard nba.com has
[:resources] = "commonplayerinfo"
[:parameters], array, with hash 
[:resultSets][0]
	[:name] = "commonplayerinfo"
	[:headers][0] = Person_ID - nbacomid in table to id player
	[:headers][1] = First_name
	[:headers][2] = Last_name
	[:headers][3] = Display_First_Name SKIP
	[:headers][4] = DIsplay_Last_Comma_First Skip 
	[:headers][5] = Display First Initial Last Name SKIP
	[:headers][6] = Birthdate?  Convert?
	[:headers][7] = School?
	[:headers][8] = Country?
	[:headers][9] = Last Affilitation (school/team before nba)
	[:headers][10] = Height - can convert to inches
	[:headers][11] = Weight - can convert to inches
	[:headers][12] = Seasons = Skip
	[:headers][13] = Jersey - SKIP
	[:headers][14] = Position - worth keeping?  Is in words
	[:headers][15] = Roster Status (active/inactive)
	[:headers][16] = Team ID SKIP 
	[:headers][17] = Team Name Skip
	[:headers][18] = Team Abbreviation -= SKIP
	[:headers][19] = Team Code Skip
	[:headers][20] = Team City Skip
	[:headers][21] = Player code (firstName_lastName.downcase) - SKIP
	[:headers][22] = Start Year
	[:headers][23] = End Year -= SKIP
	[:headers][24] = Dleague_flag - skip
	[:headers][25] = Games_played_flag - skip

	rails g model Player nbacomid:string first_name:string last_name:string birthdate:date school:string county:string height:integer position:string start_year:integer
