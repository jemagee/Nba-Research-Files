require 'net/HTTP'
require 'JSON'
BASE_LINK = "http://stats.nba.com/stats/scoreboardV2?DayOffset=0&LeagueID=00&gameDate="
search_date = "3/25/2015"
search = BASE_LINK + search_date
uri = URI(search)
puts "Getting the Data"
start = Time.now 
results = JSON.parse(Net::HTTP.get(uri))
base_hash = results["resultSets"]
finish = Time.new
puts "Got the data"
puts "It took #{finish-start} seconds"
game_info = base_hash[0]["rowSet"]
game_info.each do |x|
  puts "#{x[2]} on #{x[5]} has the home team of #{x[6]} and the away team of #{x[7]}"
end

points_scrape = base_hash[1]["rowSet"]

points_scrape.each do |x|
  puts "#{x[4]} with team id #{x[3]} scored #{x[21]} points in game #{x[2]}"
end


#Player Game Shot Chart - Player ID REQUIRED http://stats.nba.com/stats/shotchartdetail?CFID=&CFPARAMS=&ContextFilter=&ContextMeasure=FGA&DateFrom=&DateTo=&EndPeriod=10&EndRange=28800&GameID=0021401175&GameSegment=&LastNGames=0&LeagueID=00&Location=&Month=0&OpponentTeamID=0&Outcome=&Period=0&PlayerID=203082&Position=&RangeType=2&RookieYear=&Season=2014-15&SeasonSegment=&SeasonType=Regular+Season&StartPeriod=1&StartRange=0&TeamID=1610612761&VsConference=&VsDivision=

#Box Score Raw Information - http://stats.nba.com/stats/boxscoretraditionalv2?EndPeriod=10&EndRange=28800&GameID=0021401175&RangeType=2&Season=2014-15&SeasonType=Regular+Season&StartPeriod=1&StartRange=0

#Play By Play Raw Information - http://stats.nba.com/stats/playbyplayv2?EndPeriod=10&EndRange=55800&GameID=0021401175&RangeType=2&Season=2014-15&SeasonType=Regular+Season&StartPeriod=1&StartRange=0

#Player Information http://stats.nba.com/stats/commonplayerinfo?LeagueID=00&PlayerID=202340