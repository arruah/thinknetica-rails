=begin
Make a hash containing months and the number of days in a month. In the cycle output those months in which the number of days exactly 30
=end

months = {"January" => 31, "Februrary" => 30, "March" => 31, "April" => 31, "May" => 31, "June" => 30, "July" => 31, "August" => 31, "September" => 31, "November" => 31}

months.each {|month, day| puts month if day == 30 }
