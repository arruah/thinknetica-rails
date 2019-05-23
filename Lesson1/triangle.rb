=begin
The area of the triangle. The area of a triangle can be calculated by knowing its base (a) and height (h)
using the formula: 1/2*a*h. The program must request the base and height of the triangle and return its area.
=end
puts "Please enter the base of the triangle"
base_ot_triangle = gets.chomp.to_f
puts "Please enter the height of the triangle"
height_of_triangle = gets.chomp.to_f
area_of_triangle = 0.5 * base_ot_triangle * height_of_triangle
puts "Area of the triangle is #{area_of_triangle}"
