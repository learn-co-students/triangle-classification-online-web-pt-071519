require 'pry'

class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif (@side_one + @side_two <= @side_three) || (@side_one + @side_three <= @side_two) || (@side_two + @side_three <= @side_one)
      raise TriangleError
    end
    match_one = (@side_one == @side_two) 
    match_two = (@side_one == @side_three)
    match_three = (@side_three == @side_two)
    equilateral = match_one && match_three
    isosceles = match_one || match_two || match_three
    if equilateral
      :equilateral
    elsif isosceles
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end

end
