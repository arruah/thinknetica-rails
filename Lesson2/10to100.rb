=begin
Fill the array with numbers from 10 to 100 in 5 steps
=end

range = (10..100).to_a
range.delete_if {|a| a % 5 != 0 }
print range
