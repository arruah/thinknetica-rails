sum, basket_sum = 0, 0
products = {}

loop do
system "clear"
  puts "Enter the name of the product: "
  name = gets.chomp
  break if name.downcase == "stop"
  puts "Enter the price per unit: "
  price = gets.chomp.to_f
  puts "Enter the item quantity: "
  quantity = gets.chomp.to_f
products[name] = { a:price, b: quantity}
end

system "clear"
products.each do |name, price_quantity|
  sum = price_quantity[:a] * price_quantity[:b]
  print name + '  ' + price_quantity[:a].to_s + ' ' + price_quantity[:b].to_s + ' Sum: ' + sum.to_s
  puts
  basket_sum += sum
end

puts "The total amount of purchases: #{basket_sum}"
