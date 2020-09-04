class Controller
  def initialize
    @all_stations = []
    @trains = []
    @routes = []
  end

  def help
    puts '1. Create station'
    puts '2. Create train.'
    puts '3. Creata route.'
    puts '4. Add intermediate station to route.'
    puts '5. Add route to train.'
    puts '6. Hook the wagon to train.'
    puts '7. Unhook the wagon from the train.'
    puts '8. Move train along the route.'
    puts '9. View the list of stations and trains at the station.'
  end

  def auto
    puts 'Automatic initialization'
    @trains << CargoTrain.new('cargo_t1')
    @trains << CargoTrain.new('cargo_t2')

    @trains << PassangerTrain.new('passenger_t1')
    @trains << PassangerTrain.new('passenger_t2')

    puts 'Trains: '
    @trains.each {|train| puts "Train name: #{train.name}"}
    @all_stations << Station.new('s1')
    @all_stations << Station.new('s2')
    @all_stations << Station.new('s3')
    @routes << Route.new(@all_stations.first, @all_stations.last)
    puts 'Auto creating -----------------------'
    puts "Total stations: #{@all_stations.count}"
    puts "Total trains: #{@trains.count}"
    puts "Total routes #{@routes.count}"
    puts 'Auto creating compete ---------------'
  end

  def run
    loop do
      print '(Main menu) Your action:'
      choice = gets.chomp.downcase

      case choice
      when '1'
        puts 'Enter station name:'
        station_title = gets.chomp
        station = Station.new(station_title)
        @all_stations << station

      when '2'
        puts 'Enter train name:'
        train_name = gets.chomp.downcase
	puts train_name
        puts 'Type of the train ("cargo" or "passanger")'
        train_type = gets.chomp.downcase

        if train_type == "cargo"
          train_cargo = CargoTrain.new(train_name)
          @trains << train_cargo
        elsif train_type == "passanger"
          train_passanger = PassangerTrain.new(train_name)
          @trains << train_passanger
        else
          puts 'Invalid type of the train.'
        end


      when '3'
        puts 'Stations list: '
        self.show_all_stations

        puts 'Enter number of first list: '
        index_start_station = gets.to_i
        start_station = @all_stations[index_start_station]

        puts 'Enter number of last station:'
        index_finish_station = gets.to_i
        finish_station = @all_stations[index_finish_station]

        route = Route.new(start_station, finish_station)
        @routes << route

      when '4'
        return puts 'Until there are no routes created!' if @routes.empty?

        puts 'List of known stations:'
        self.show_all_stations

        puts 'Enter the number of intermediate station:'
        index_intermediate_station = gets.to_i
        intermediate_station = @all_stations[index_intermediate_station]

        puts 'List of routes:'
        self.show_routes

        puts 'Select the route to which we will add the intermediate station.'
        index_route = gets.to_i
        user_route = @routes[index_route]
        user_route.add_intermediate_station(intermediate_station)

      when '5'
        if (@routes.empty? || @trains.empty?)
          puts 'Create a train and a route!'
        else
          puts 'Trains list:'
          self.show_list_train

          puts 'Enter the train you want to assign the route to:'
          index_train = gets.to_i
          user_train = @trains[index_train]

          puts 'Route list:'
          self.show_routes

          puts 'Choose a route that will add the train.'
          index_route = gets.to_i
          user_route = @routes[index_route]
          user_train.take_route(user_route)
        end

      when '6'
        return puts 'As yet there are no trains created!' if @trains.empty?

        puts 'Trains list:'
        self.show_list_train

        puts 'Select the train to which you want to add a wagon:'
        index_train = gets.to_i
        user_train = @trains[index_train]

        if user_train.is_a?(CargoTrain)
          cargo_vagon = CargoVagon.new
          user_train.hook_vagon(cargo_vagon)
        elsif user_train.is_a?(PassangerTrain)
          passanger_vagon = PassangerVagon.new
          user_train.hook_vagon(passanger_vagon)
        else
          puts 'Train not to pin a wagon, as the type of train and wagon do not match.'
        end

      when '7'
        if @trains.empty?
          puts 'Not a single train has been created yet!'
        else
          puts 'List of trains with wagons:'
          @trains.each.with_index do |train, index|
          puts "#{index} - train #{train.name} type #{train.type} wagon #{train.vagons}"
          end

          puts 'Select the train you want to unhook the vagon:'
          index_train = gets.to_i
          user_train = @trains[index_train]
          user_train.unhook_vagon
        end

      when '8'
        if @trains.empty?
          puts 'Not a single train has been created yet!'
        else
          puts 'The train can go forward or back to one station.'
          puts 'Trains list:'
          self.show_list_train

          puts 'Choose the train that will go on the route:'
          index_train = gets.to_i
          user_train = @trains[index_train]

          if user_train.route.nil?
            puts 'The train has no route!'
          else
            puts "Enter 'next' for train go forward."
            puts "Enter 'back' for train go backward."
            puts "Enter 'showNext for show next station."
            puts "Enter showCurrent for show current."
            puts "Enter showPrevious for show previous station."

            puts "Your action:"
            user_train_manipulation = gets.chomp.downcase

            case user_train_manipulation
            when 'next'
              user_train.go_next_station
            when 'back'
              user_train.go_previous_station
            when 'shownext'
              puts user_train.show_next_station.title
            when 'showcurrent'
              puts user_train.show_current_station.title
            when 'showprevious'
              puts user_train.show_previous_station.title
            else
              puts "Invalid command #{user_train_manipulation}."
            end
          end
        end

      when '9'
        puts 'Lists of trains and vagons on stations: '
        @all_stations.each do |station|
          puts "\nstation #{station.title}"
          station.trains.each do |train|
            puts "-train: #{train.name}, wagon: #{train.vagons.size}"
          end
        end

      when 'help'
        self.help

      else
        puts 'Invalid command try to enter help.'
      end
    end
  end

  protected

  def show_list_train
    @trains.each.with_index do |train, index|
      puts "#{index} - поезд #{train.name} тип #{train.type}"
    end
  end

  def show_all_stations
    @all_stations.each.with_index do |station, index|
    puts "#{index} - #{station.title}"
    end
  end

  def show_routes
    @routes.each.with_index do |route, index|
      puts "#{index} - #{route.name}"
    end
  end
end
