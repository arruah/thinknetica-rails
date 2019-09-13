class Train
  attr_reader :speed, :wagon_count, :type, :station, :number
  def initialize(number, type, wagon_count)
    @number = number
    @type = type
    @wagon_count = wagon_count
    @speed = 0
    @station_index = 0
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

  def add_wagon
    @wagon_count + 1 if @speed.positive?
  end

  def delete_wagon
    @wagon_count - 1 if @wagon_count.zero? && @speed.zero?
  end

  def take_route(route)
    @station_index = 0
    @route = route
    @route.stations[@station_index].arrival(self)
  end

  def show_current_station
    @route.stations[@station_index].name
  end

  def move_forward
    @route.stations[@station_index].departure(self)
    @station_index += 1
    @route.stations[@station_index].arrival(self)
  end

  def move_backward
    @route.stations[@station_index].departure(self)
    @station_index -= 1
    @route.stations[@station_index].arrival(self)
  end

  def next_station
    @route.stations[@station_index + 1]
  end

  def previous_station
    @route.stations[@station_index - 1]
  end
end
