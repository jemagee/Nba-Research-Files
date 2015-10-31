input_data = 
{

    "name": "LeagueAverages",
    "headers": 

        [

            "GRID_TYPE",
            "SHOT_ZONE_BASIC",
            "SHOT_ZONE_AREA",
            "SHOT_ZONE_RANGE",
            "FGA",
            "FGM",
            "FG_PCT"

        ],
    "rowSet": 
    [

        [

            "League Averages",
            "Above the Break 3",
            "Back Court(BC)",
            "Back Court Shot",
            55,
            2,
            0.036

        ],
        [

            "League Averages",
            "Above the Break 3",
            "Center(C)",
            "24+ ft.",
            9724,
            3289,
            0.338

        ],
        [

            "League Averages",
            "Above the Break 3",
            "Left Side Center(LC)",
            "24+ ft.",
            15408,
            5259,
            0.341

        ],
        [

            "League Averages",
            "Above the Break 3",
            "Right Side Center(RC)",
            "24+ ft.",
            15148,
            5194,
            0.343

        ],
        [

            "League Averages",
            "Backcourt",
            "Back Court(BC)",
            "Back Court Shot",
            427,
            11,
            0.026

        ],
        [

            "League Averages",
            "In The Paint (Non-RA)",
            "Center(C)",
            "8-16 ft.",
            6599,
            2771,
            0.42

        ],
        [

            "League Averages",
            "In The Paint (Non-RA)",
            "Center(C)",
            "Less Than 8 ft.",
            20196,
            7693,
            0.381

        ],
        [

            "League Averages",
            "In The Paint (Non-RA)",
            "Left Side(L)",
            "8-16 ft.",
            1706,
            711,
            0.417

        ],
        [

            "League Averages",
            "In The Paint (Non-RA)",
            "Right Side(R)",
            "8-16 ft.",
            2016,
            801,
            0.397

        ],
        [

            "League Averages",
            "Left Corner 3",
            "Left Side(L)",
            "24+ ft.",
            7374,
            2801,
            0.38

        ],
        [

            "League Averages",
            "Mid-Range",
            "Center(C)",
            "16-24 ft.",
            7850,
            3130,
            0.399

        ],
        [

            "League Averages",
            "Mid-Range",
            "Center(C)",
            "8-16 ft.",
            1963,
            847,
            0.431

        ],
        [

            "League Averages",
            "Mid-Range",
            "Left Side Center(LC)",
            "16-24 ft.",
            8034,
            3153,
            0.392

        ],
        [

            "League Averages",
            "Mid-Range",
            "Left Side(L)",
            "16-24 ft.",
            5818,
            2282,
            0.392

        ],
        [

            "League Averages",
            "Mid-Range",
            "Left Side(L)",
            "8-16 ft.",
            8257,
            3239,
            0.392

        ],
        [

            "League Averages",
            "Mid-Range",
            "Right Side Center(RC)",
            "16-24 ft.",
            8914,
            3454,
            0.387

        ],
        [

            "League Averages",
            "Mid-Range",
            "Right Side(R)",
            "16-24 ft.",
            5345,
            2162,
            0.404

        ],
        [

            "League Averages",
            "Mid-Range",
            "Right Side(R)",
            "8-16 ft.",
            7595,
            3007,
            0.396

        ],
        [

            "League Averages",
            "Restricted Area",
            "Center(C)",
            "Less Than 8 ft.",
            66134,
            39735,
            0.601

        ],

        [
            "League Averages",
            "Right Corner 3",
            "Right Side(R)",
            "24+ ft.",
            6987,
            2738,
            0.392
        ]
    ]
}    

output = input_data[:rowSet]

puts "There are #{output.length} league averages to work with"
puts "They are listed below"
output.each do |x|
    puts "#{x[1]} - #{x[2]} - #{x[3]}"
end