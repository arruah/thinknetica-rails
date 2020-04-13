class PassengerTrain < Train
  TYPE = 'passenger'

  def initialize(name)
    super(name, TYPE)
  end
  def add_wagon(wagon)
    super(wagon) if wagon.class == PassengerWagon
  end
end
