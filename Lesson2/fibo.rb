=begin
Fill the array with Fibonacci numbers up to 100
=end

arr = [0, 1]
while arr[-1] < 100 - arr[-2]
  arr << arr[-1] + arr[-2]
end
printf arr.to_s
