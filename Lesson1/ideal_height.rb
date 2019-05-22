=begin 
The program asks the user for a name and height and displays the ideal weight by the formula <height> - 110,
and then displays the result to the user on the screen with the treatment by name. If the ideal weight is negative,
the line "Your weight is already optimal"
=end

puts "What is your name?"
name = gets.chomp
puts "What is your height (in cantimeters)?"
user_height = gets.chomp
ideal_weght = user_height.to_i - 110
if ideal_weght > 0
puts " #{name} your ideal weight is #{user_height.to_i - 110}"
else
  puts "#{name} your weight is already ideal!"
  end
