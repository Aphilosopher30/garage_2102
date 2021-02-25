class Owner
  attr_reader :occupation, :cars, :name

  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(car)
    @cars << car
  end 




end
