=begin
Quadratic equation. The user enters 3 coefficients a, b and C. the Program calculates the discriminant (D) and the roots of the equation (x1 and x2, if any) and displays the values of the discriminant and roots on the screen. The following options are available:
  If D > 0, we deduce the discriminant and root 2
  If D = 0, we deduce the discriminant 1 and the root (because the root in this case is)
  If D < 0, then output the discriminant and the message "no Roots"
Tip: the solution Algorithm with a flowchart (www.bolshoyvopros.ru). To calculate the square root, use
Math.sqrt
 For example,
Math.sqrt(16)
  returns 4, i.e. the square root of 16.
=end
puts "Enter the first coefficient (a)"
a = gets.chomp.to_f
puts "Enter the second coefficient (b)"
b = gets.chomp.to_f
puts "Enter the third coefficient (c)"
c = gets.chomp.to_f

d = b**2 - (4 * a * c)
if d < 0
  puts "The equation have no roots, discriminant is #{d}"
elsif d == 0
  x1 = -b/2 * a
  puts "The equation have one root #{x1}, discriminant is #{d}"
else
  x = Math.sqrt(d)
  x1 = (-b + x ) / (2 * a)
  x2 = (-b - x) / (2 * a)
  puts "The equation have thw roots #{x1} and #{x2}, discriminant is #{d}"
end
