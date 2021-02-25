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

    # data = {description: 'Green Ford Mustang', year: '1967'}
    # car = Car.new(data)

    owner = Owner.new('Regina George', 'Heiress')

    assert_equal "Regina George", owner.name
    assert_equal "Heiress", owner.occupation
    assert_equal [], owner.cars
  end

end
