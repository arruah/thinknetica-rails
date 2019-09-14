require './route.rb'
require './train.rb'
require './station.rb'

@first = Station.new('first')
@second = Station.new('second')
@last = Station.new('last')
@route = Route.new(@first, @last)
@train = Train.new(12, 'passenger', 20)

p @first
p @second
p @last
p @route.to_s
p @train.to_s
p @station_index.to_s

