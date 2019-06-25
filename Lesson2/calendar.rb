=begin
Given three numbers that indicate the number, month, year (ask the user).
Find the serial number of the date starting from the beginning of the year.
Take into account that the year can be leap.
((Is it forbidden to use ruby's built-in methods like Date#today or Date#leap?)
Algorithm for determining a leap year: www.adm.yar.ru
=end

last_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts "Enter the date in this format: DD.MM.YYYY"
day, month, year = gets.chomp.split('.').map(&:to_i)

days_sum = last_days.take(month-1).sum + day
leap = ((year % 4 ==  0 and year % 100 != 0 ) || (year % 400 == 0))
last_days[1] = 29 if leap
puts "Number of days from the beginning of the #{"leap" if leap}year - #{days_sum}"

