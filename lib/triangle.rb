require 'pry'
class Triangle 
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
      if x>= (y + z) || (y >= x + z) || (z >= x + y)
        raise TriangleError
      elsif
         x <= 0 || y <= 0 ||z <= 0
        raise TriangleError
      binding.pry
      end

  end

  def kind
    if x == y && y == z
      :equilateral 
    elsif 
      x == y || y == z || x == z
      :isosceles
    else 
      :scalene
  end
end

  

    class TriangleError < StandardError
    end
end
