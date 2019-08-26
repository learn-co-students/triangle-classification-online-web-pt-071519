require 'pry'

class Triangle
  
  attr_accessor :triangle, :length, :eq_length, :eq_triangle, :is_triangle, :sc_triangle
  
  def initialize (side_one, side_two, side_three)
  # binding.pry 
    @triangle = side_one + side_two + side_three
 
  end 
 
  def kind(triangle)
binding.pry 
    self.triangle = triangle
     
   

  
    if triangle.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end
    else
      triangle.kind = self
    end
  end 
  
  class TriangleError < StandardError
    def message
      "Not a triangle, sorry."
    end
  end
  
end
