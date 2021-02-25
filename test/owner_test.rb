require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'


class OwnerTest < Minitest::Test

  def test_it_exists

    owner = Owner.new('Regina George', 'Heiress')

    assert_instance_of Owner, owner
  end


  def test_it_has_attrabutes

    owner = Owner.new('Regina George', 'Heiress')

    assert_equal "Regina George", owner.name
    assert_equal "Heiress", owner.occupation
    assert_equal [], owner.cars
  end

  def test_buy_car

    owner = Owner.new('Regina George', 'Heiress')
    owner.buy('1967 Green Ford Mustang')

    assert_instance_of Car, owner.cars[0]
    assert_equal 1, owner.cars.length

    owner.buy('2001 Silver BMW 3-Series')

    assert_instance_of Car, owner.cars[-1]
    assert_equal 2, owner.cars.length

  end

  def test_vintage_cars
    owner = Owner.new('Regina George', 'Heiress')
    owner.buy('1967 Green Ford Mustang')
    owner.buy('2001 Silver BMW 3-Series')
    owner.buy('1963 Red Chevrolet Corvette')

    assert_equal 2, owner.vintage_cars.length
  end

end
