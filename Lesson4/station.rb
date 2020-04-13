class Station
  include InstanceCounter

  attr_reader :trains, :name

  @@stations = []

  def initialize(name)
    @name = name
    @trains = []
    @@stations << self
    register_instance
  end

  def arrival(train)
    @trains << train
    p "Train #{train.number} arrived"
  end

  def departure(train)
    @trains.delete(train)
    p "Train #{train.number} departured"
  end

  def show_type_of_train(type)
    @trains.select { |train| train.type == type }
  end
end
