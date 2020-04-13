class CargoTrain < Train
  TYPE = 'cargo'

  def initialize
    super(name)
  end

  def add_wagon(wagon)
    super(wagon) if wagon.class == CargoWagon
  end
end
