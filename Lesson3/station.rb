class Station
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrival(train)
    @trains.push(train)
  end

  def departure(number)
    @trains.delete(number)
  end

  def type(type)
    @trains.select { |train| train.type == type }
  end
end
