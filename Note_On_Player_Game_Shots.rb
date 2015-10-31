Player Game Information JSON

Hash

KeyValue one "resource": "shotchartdetail"

Key two "parameters" values is hash {
	the hash includes a lot of information that has a lot of nulls - I don't know if it's useful or needed
}

Key three "resultSets": Is an array
	resultSets[0] is a hash
		"name": "Shot_Chart Detail"
		"headers": [
			headers[0] = "GRID_TYPE" - SKIP
			headers[1] = "GAME_ID"
			headers[2] = "GAME_EVENT_ID" - This ties into the play by play - could be an interesting link up to maintain
			headers[3] = "PLAYER_ID"
			headers[4] = "PLAYER_NAME" - SKIP
			headers[5] = "TEAM_ID" - SKIP
			headers[6] = "TEAM_NAME" - SKIP
			headers[7] = "PERIOD"
			headers[8] = "MINUTES_REMAINING"
			headers[9] = "SECONDS_REMAINING" 
			headers[10] = "EVENT_TYPE" - This so far is either made or missed shot - maybe can be skipped because of shot made flag
			headers[11] = "ACTION_TYPE" - Detail regarding type of shot - could be useful
			headers[12] = "SHOT_TYPE" - Indicates whether a 2 or a 3 - not sure if necessary
			headers[13] = "SHOT_ZONE_BASIC" - SKIP
			headers[14] = "SHOT_ZONE_AREA" - SKIP
			headers[15] = "SHOT_ZONE_RANGE" - SKIP
			headers[16] = "SHOT_DISTANCE"
			headers[17] = "LOC_X"
			headers[18] = "LOC_Y"
			headers[19] = "SHOT_ATTEMPTED_FLAG"
			headers[20] = "SHOT_MADE_FLAG"
		]
		"rowSet":
Lists all given players shot in the game.  Shot_Zone information is basic areas of the court -might be handy - learning what loc_x and loc_y represent on the court exteremely helpful as well.  Shot_Made_Flag set to 1 for make and 0 for miss - shot_type might be helpful in terms of type of shot - or perhaps converting those to an integer quantity to be parsed into the table might be useful as well - should research a more prodigious shooter to see all the types of shots that they take.
Shot_Zone_Basic, Shot_Zone_Area, Shot_Zone_Range are one of 20 combinations that the league uses to define various shot regions.  Could be useful but not necessary to start, x/y and shot distance should help me out to come up with my own combos.
This will be run after putting in box score - for each game - get each players shots - if player has minutes 
	Dealing with DNPs in parsing is important because saves the time of downloading no data.
	Get the game - get the players in the game - if the FGA is greater than 0 you fetch the shots - if not just skip to the next one
		players_in_game each do |x|
			if x.fga > 0
				get player shot stats
			end
		end

		Should the seasons be listed to indicate the preseason, regular season, all star game and playoff dates?

		