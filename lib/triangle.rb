class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
     @a = a
     @b = b
     @c = c
   end

  def kind
    if side_one + side_two =< side_three || side_one + side_three =< side_two || side_two + side_three =< side_two || side_one > 0 || side_two > 0 || side_three > 0
      raise TriangleError
    elsif side_one == side_two && side_two == side_three && side_one == side_three
      :equilateral
    elsif side_one != side_two && side_one != side_three && side_two != side_three
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
  end
end
end
