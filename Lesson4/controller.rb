class controller
  def initialize
    @all_stations = []
    @trains = []
    @routes = []
  end

  def help
    p 'Press 1 to create a station'
    p 'Press 2 ti ctreate a train'
    p 'Press 3 to create a route'
    p 'Press 4 to define intermediate station on the route'
    p 'Press 5 to define route to the train'
    p 'Press 6 to add an wagon to the train'
    p 'Press 7 to add remove the wagon'
    p 'Press 8 to move train throw the route'
    p 'Press 9 to see the list stations with trains'
  end

  def run
    loop do
      p 'Your action:'
      choice = gets.chomp

      case choice
      when '1'
        p 'Enter the name of station: '
        station_title = gets.chomp
        station = Station.new(station_title)
        @all_stations << station

      when 2
        p 'Train name: '
        train_name = gets.chomp.downcase

        if train_type == 'cargo'
          train_cargo = CargoTrain.new(train_name)
          @trains << train_cargo
        elsif train_type == 'passenger'
          train_passenger = PassengerTrain.new(train_name)
          @trains << train_passenger
        else
          p 'Wrong type of train'
        end

      when 3
        p 'List of the stations: '
        self.show_all_stations

        p 'Enter the number of the first station: '
        index_start_station = gets.to_i
        start_station = @all_stations[index_start_station]

        p 'Enter the number if the last station: '
        index_last_station = gets.to_i
        last_station = @all_station[index_last_station]

        route = Route.new(start_station, last_station)
        @routes << route

        when '4'
      end
    end
  end
end
