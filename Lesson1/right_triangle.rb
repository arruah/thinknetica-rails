=begin
Right triangle. The program asks the user for 3 sides of the triangle and determines whether the triangle is
rectangular, using the Pythagorean theorem (www-formula.ru) and displays the result on the screen. If the triangle is
 at the same time isosceles (ie, it is equal to any 2 sides), then further information is displayed that the triangle
 isosceles. If the triangle is equilateral, a message is displayed that the triangle is isosceles and equilateral,
but not rectangular. Tip: to use the Pythagorean theorem, you must first find the longest side (the hypotenuse) and
compare its value in the square with the sum of the squares of the other two sides. If all 3 sides are equal, the
triangle isosceles and equilateral, but not rectangular.
=end
puts "Enter the First side of the triangle"
first = gets.chomp
puts "Enter the Second side iof the triangle"
second = gets.chomp
puts "Enter the Third side of the triangle"
third = gets.chomp

a, b, c = [first.to_f, second.to_f, third.to_f].sort

if a == b && a == c
  puts "The triangle isosceles and equilateral, but not rectangular"
  exit
end

if c**2 == a**2 + b**2
  print "The triangle is Right"
  else print "The triangle is not Right"
end

if a == b
  print " and  isosceles"
end

puts "."
