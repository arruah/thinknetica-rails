class Car
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(speed = 10, engine_volume = 1.6)
    @speed = speed
    @engine_volume = engine_volume
    beep
  end
  def start_engine
  puts 'Engine started'
  end

  def beep
    p 'Beep'
  end

  def stop
    self.speed = 0
  end
  def go
    self.speed = 50
  end
end
