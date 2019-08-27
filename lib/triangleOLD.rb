require 'pry'

class Triangle
  
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    
  end
  


  def kind
    

      if
        begin
          raise TriangleError
        rescue TriangleError => error 
          puts error.message
        end
      
        if (@triangle_sides.uniq).length == 1 
          return :equilateral 
        elsif @triangle_sides.uniq.count == 2 
          return :isosceles 
        elsif @triangle_sides.uniq.length == 3    
          return :scalene 
        end
      end
    end

  end  


  class TriangleError < StandardError
    def message
      "Not a triangle, sorry."
    end
  end
  
end
  
  # def kind
  #   if @triangle_sides.uniq <= 0
  #       begin
  #         raise TriangleError
  #       rescue TriangleError => error 
  #         puts error.message
  #       end
  #     else

  #     return :equilateral if (@triangle_sides.uniq).length == 1 
  #     return :isosceles if @triangle_sides.uniq.count == 2 
  #     return :scalene if @triangle_sides.uniq.length == 3    
  #   end

  # end
  

  #       #   begin
  #       #     raise TriangleError
  #       #   rescue TriangleError => error 
  #       #     puts error.message
  #       #   end
  #       # end
  #     # end
  #   end
  
