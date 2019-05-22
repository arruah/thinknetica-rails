=begin
The area of the triangle. The area of a triangle can be calculated by knowing its base (a) and height (h)
using the formula: 1/2*a*h. The program must request the base and height of the triangle and return its area.
=end
puts "Please enter the base of the triangle"
base_ot_triangle = gets.chomp
puts "Please enter the height of the triangle"
height_of_triangle = gets.chomp
area_of_triangle = 0.5*base_ot_triangle.to_i*height_of_triangle.to_i
puts "Area of the triangle is #{area_of_triangle.to_s}"
