require './lib/car'

class Owner
  attr_reader :occupation, :cars, :name

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(car_descritpion)
    car_info = convert_string_to_car_info(car_descritpion)
    car = Car.new(car_info)
    @cars << car
  end

  def convert_string_to_car_info(string)
    info_list = string.split
    date = info_list[0]
    data_list = info_list.delete_at(0)
    data = info_list.join
    car_info = {}
    car_info[:description] = data
    car_info[:year] = date

    car_info
  end

  def vintage_cars(cut_off = 25)
    vintage = @cars.find_all do |car|
      car.age >= cut_off
    end
    vintage
  end
end
