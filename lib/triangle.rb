class Triangle

  def intialize(a, b, c)

  end

  def kind
    :equilateral
    :isosceles
    :scalene
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle"
    end
  end

end
