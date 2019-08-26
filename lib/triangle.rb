class Triangle
  
  attr_accessor :eq_length, :is_length, :sc_length
  
  def initialize(eq_length, is_length, sc_length)
    
  end 
  
  def kind 
    :equilateral
    :isosceles
    :scalene
    
  end 
  
  class TriangleError < StandardError
    def message
      "Not a triangle, sorry."
    end
end
