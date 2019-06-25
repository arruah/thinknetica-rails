=begin
Fill the array with Fibonacci numbers up to 100
=end
arr = [0, 1]
while (i = arr[-1] + arr[-2]) <= 100
  arr << i
end
printf arr.to_s
