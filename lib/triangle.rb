class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one == side_two && side_two == side_three && side_one == side_three
      :equilateral
    elsif side_one != side_two && side_one != side_three && side_two != side_three
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
    "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end
