class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
     @a = a
     @b = b
     @c = c
   end

  def kind
    is_a_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else 
      :scalene
    end
  end

  def is_a_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]

  class TriangleError < StandardError
  end
end
