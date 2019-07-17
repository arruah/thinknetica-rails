class Train
  attr_reader :speed, :wagon_count, :type, :station, :number
  def initialize(number, type, wagon_count)
    @number = number
    @type = type
    @wagon_count = wagon_count
    @speed = 0
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
    @wagon_count - 1 if @wagon_count.positive? && @speed.zero?
  end

  def take_route(route)
    @route = route.stations
    @station = route.stations.first
  end

  def move_forward
    @station = next_station if next_station
  end

  def move_backward
    @station = previous_station if previous_station
  end

  def next_station
    @route[@route.index(@station) + 1] if @route.index(@station) - 1 < @route.size
  end

  def previous_station
    @route[@route.index(@station) - 1] if (@route.index(@station) - 1).positive?
  end
end
