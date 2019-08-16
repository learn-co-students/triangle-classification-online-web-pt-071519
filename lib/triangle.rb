require 'pry'
class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle #run method to make sure triangle is indeed a triangle
    if a == b && b == c
      :equilateral #returns, as a symbol, its type
    elsif a == b || b == c || a == c
      :isosceles #returns, as a symbol, its type
    else
      :scalene #returns, as a symbol, its type
    end
  end

  def validate_triangle
    valid_triangle = [(a + b > c), (a + c > b), (b + c > a)] #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
    [a, b, c].each { |side| valid_triangle << false if side <= 0 } #if a side is less than or equal to 0, shovel false to valid triangle array. [true,true,true, #false]
      # binding.pry
    raise TriangleError if valid_triangle.include?(false) 
  end
  
  class TriangleError < StandardError
  end
end

