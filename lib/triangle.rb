require 'pry'

class Triangle
  
  attr_accessor :side_one, :side_two, :side_three, :triangle_sides
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end
  
  def validation                  # DONT BE AFRAID TO SEPARATE THE RESULTS YOU WANT IN TO A MODULE
    real_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three >  side_one)]
    [ side_one, side_two, side_three].each do |side|
      real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false)
    end
    
    @triangle_sides = []          # great use of uniq as a point of triangle definition
    @triangle_sides << side_one
    @triangle_sides << side_two
    @triangle_sides << side_three   
  end


  def kind
    validation
    return :equilateral if (@triangle_sides.uniq).length == 1
    return :isosceles if @triangle_sides.uniq.count == 2 
    return :scalene if @triangle_sides.uniq.length == 3 
        
  end
      
      
  class TriangleError < StandardError
    # def message
    #   "Not a triangle, sorry."
    # end
  end
end