class Garage
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def all_cars
    every_car = []
    @customers.each do |customer|
      customer.cars.each do |car|
        every_car << car
      end
    end
    every_car
  end

  def cars_by_make
    car_hash = Hash.new([])
    all_cars.each do |car|
      car_hash[car.make] << car
    end
    car_hash
  end
end
