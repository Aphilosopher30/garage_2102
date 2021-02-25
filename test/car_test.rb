require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

require 'mocha/minitest'


class CarTest < Minitest::Test

  def test_it_exists

    data = {description: 'Green Ford Mustang', year: '1967'}
    car = Car.new(data)

    assert_instance_of Car, car
  end


  def test_it_has_attrabutes

    data = {description: 'Green Ford Mustang', year: '1967'}
    car = Car.new(data)

    assert_equal "Ford", car.make
    assert_equal "Mustang", car.model
    assert_equal "Green", car.color
    assert_equal "1967", car.year
    assert_equal 54, car.age
  end

end
