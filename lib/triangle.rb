class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

def triangle_tho
  valid_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a,b,c].each do |side|
    valid_triangle << false if side <= 0
    raise TriangleError if valid_triangle.include?(false)
  end
end

  def kind
    triangle_tho
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "gurl that ain't a triangle k pls try again thx"
    end
  end
end
