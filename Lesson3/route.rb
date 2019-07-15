class Route
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def add(station)
    stations.insert(-2, station)
  end

  def remove(station)
    station.remove(station)
  end
end
