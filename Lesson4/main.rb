require_relative 'modules/manufacturer_name'
require_relative 'modules/instance_counter'
require_relative 'train'
require_relative 'vagon'
require_relative 'Cargo_train'
require_relative 'passanger_train'
require_relative 'passanger_vagon'
require_relative 'Cargo_vagon'
require_relative 'station'
require_relative 'route'
require_relative 'controller'

#controller = Controller.new
#controller.help
#controller.run

@stations = []
@cargo_trains = []
@routes = []

@cargo_trains << CargoTrain.new('t1')
@cargo_trains << CargoTrain.new('t2')
@cargo_trains << CargoTrain.new('t3')
@cargo_trains << CargoTrain.new('t4')

@stations << Station.new('s1')
@stations << Station.new('52')
@stations << Station.new('s3')

@routes << Route.new(@stations.first, @stations.last)

puts "Cargo trains:"
@cargo_trains.each do |train|
   puts "Train name: #{train.name}"
end
puts "---------------------------------------------------------------------------"
@routes.each do |route|
   puts "Route: #{route.name}"
end
puts "---------------------------------------------------------------------------"
puts "Stations count: #{@stations.count}"
puts "Cargo trains: #{@cargo_trains.count}" 
puts "Routes #{@routes.count}"


#p Train.instances
#p Station.instances
#p Route.instances
#p CargoTrain.instances


