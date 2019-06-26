=begin
Fill the array with Fibonacci numbers up to 100
=end

arr = [0, 1]
while (i = arr[-1] + arr[-2]) <= 100
  arr << i
end
p arr.to_s
