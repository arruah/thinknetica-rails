class Train
  include ManufacturerName
  include InstanceCounter
  attr_reader :speed, :wagons, :type, :station, :number

  def initialize(number, type)
    @number = number
    @type = type
    @wagons = []
    @speed = 0
    @station_index = 0
    @@trains.store(numer, self)
    register_instance
  end

  def speed_up
    @speed += 5
  end

  def speed_down
    @speed -= 5 if @speed >= 5
  end

  def stop
    @speed = 0
  end

  def add_wagon(wagon)
    @wagons << wagon if @speed == 0
  end

  def delete_wagon
    @wagons.pop if @speed == 0
  end

  def take_route(route)
    @station_index = 0
    @route = route
    @route.stations[@station_index].arrival(self)
  end

  def show_current_station
    @route.stations[@station_index].name
  end

  def show_next_station
    @route.stations[@station_index]
  end

  def move_forward
    if show_current_station != @route.stations.last
    @route.stations[@station_index].departure(self)
    @station_index += 1
    @route.stations[@station_index].arrival(self)
    end
  end

  def move_backward
    if show_current_station != @route.stations.last
    @route.stations[@station_index].departure(self)
    @station_index -= 1
    @route.stations[@station_index].arrival(self)
    end
  end

end
