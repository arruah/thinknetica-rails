class Station
  attr_reader :train_list, :station_name

  def initialize(name)
    @train_list = []
  end

  def arrival(number)
    @train_list.push(number)
  end

  def departure(number)
    @train_list.delete(number)
  end

  def train_list_type(type)
    @train_list.select { |train| train.type == type }
  end
end
