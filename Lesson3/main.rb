require './route.rb'
require './train.rb'
require './station.rb'

@first = Station.new('first')
@last = Station.new('last')
@route = Route.new(@first, @last)
@train = Train.new(12, 'passenger', 20)

p @first
p @last
p @route.to_s
p @train.to_s


