sum, basket_sum = 0, 0
products = {}

loop do
system 'clear'
  p 'Enter the name of the product: '
  name = gets.chomp
  break if name.downcase == 'stop'
  puts 'Enter the price per unit: '
  price = gets.chomp.to_f
  puts 'Enter the item quantity: '
  quantity = gets.chomp.to_f
  products[name] = { price: price, quantity: quantity}
end

system 'clear'
products.each do |name, price_quantity|
  sum = price_quantity[:price] * price_quantity[:quantity]
  print "#{name} #{price_quantity[:a]} #{price_quantity[:b]} Sum: #{sum}"
  puts
  basket_sum += sum
end

p "The total amount of purchases: #{basket_sum}"
