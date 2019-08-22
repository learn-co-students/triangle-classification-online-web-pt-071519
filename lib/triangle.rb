require 'pry'

class Triangle
  # write code here
  attr_reader :a,:b,:c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_triangle
    if a == b && a == c && b == c
      :equilateral
    elsif a == b || a == c || b == c 
      :isosceles
    else
      :scalene
    end
  end

  def check_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
  

  class TriangleError < StandardError
  end 
end


