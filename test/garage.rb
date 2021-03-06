require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'


class GarageTest < Minitest::Test

  def test_it_exists

    garage = Garage.new("Totally Safe Parking")

    assert_instance_of Garage, garage
  end


  def test_it_has_attrabutes

    garage = Garage.new("Totally Safe Parking")

    assert_equal "Totally Safe Parking", garage.name
    assert_equal [], garage.customers
  end

  def test_add_customer

    garage = Garage.new('Totally Safe Parking')

    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    assert_equal [owner_1, owner_2], garage.customers
  end

  def test_all_cars

    garage = Garage.new('Totally Safe Parking')

    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    assert_equal 4, garage.all_cars.length

  end

  def test_cars_by_make
    garage = Garage.new('Totally Safe Parking')

    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2 = Owner.new('Glen Coco', 'Unknown')
    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)

    assert_equal 2, garage.cars_by_make[:Ford].length
    assert_equal 1, garage.cars_by_make[:Chevrolet].length
    assert_equal 1, garage.cars_by_make[:Volvo].length
  end
end
