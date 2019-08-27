require 'pry'

class Triangle
  
  attr_accessor :side_one, :side_two, :side_three, :triangle_sides
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end
  
  def validates
    real_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three >  side_one)]
    [ side_one, side_two, side_three].each do |side|
      real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false)
    end
    
    @triangle_sides = []
    @triangle_sides << side_one
    @triangle_sides << side_two
    @triangle_sides << side_three   
  end


  def kind
    validates
    if (@triangle_sides.uniq).length == 1
      return :equilateral  
    elsif @triangle_sides.uniq.count == 2 
      return :isosceles 
    elsif @triangle_sides.uniq.length == 3 
      return :scalene   
    end
  end
      
      
  class TriangleError < StandardError
    # def message
    #   "Not a triangle, sorry."
    # end
  end
end