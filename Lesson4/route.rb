class Route
  include InstanceCounter

  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
    register_instance
  end

  def add(station)
    stations.insert(-2, station)
  end

  def remove(station)
    station.delete(station) if (station != @first && station != @last)
  end
end
