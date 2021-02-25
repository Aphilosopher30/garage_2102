class Car
  attr_reader :make, :model, :year, :age, :color

  @@current_year = 2021

  def initialize(data)
    @data = data
    @description_list = parse_descrition
    @color = @description_list[0]
    @make = @description_list[1]
    @model = @description_list[2]
    @year = @data[:year]
    @age = @@current_year - @year.to_i

  end


  def parse_descrition
    @data[:description].split
  end


end
