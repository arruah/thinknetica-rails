require_relative 'modules/manufacturer_name'
require_relative 'modules/instance_counter'
require_relative 'route'
require_relative 'train'
require_relative 'station'
require_relative 'wagon'
require_relative 'controller'
require_relative 'passenger_train'
require_relative 'passenger_vagon'
require_relative 'cargo_train'
require_relative 'cargo_wagon'

controller = Controller.new

train_1 = CargoTrain.new('123')
train_2 = CargoTrain.new('321')
train_3 = CargoTrain.new('444')
train_4 = CargoTrain.new('555')

staition_astana = Station.new('Astana')
staition_almaty = Station.new('Almaty')

route_1 = Route.new(staition_astana, staition_almaty)

p Train.instances
p Station.instances
p Route.instances
p CargoTrain.instances
