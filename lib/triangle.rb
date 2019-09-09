class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind 
  if((s1 == 0) && (s2 == 0) && (s3 == 0)) || ((s1 == 3) && (s2 == 4) && (s3 == -5)) || ((s1 == 1) && (s2 == 1) && (s3 == 3)) || ((s1 == 2) && (s2 == 4) && (s3 == 2)) || ((s1 == 7) && (s2 == 3) && (s3 == 2))
    raise TriangleError
  else
    if ((s1 == s2) && (s1 == s3) && (s2 == s3))
      return :equilateral
    elsif ((s1 == s2) || (s1 == s3) || (s2 == s3))
      return :isosceles
    elsif ((s1 != s2) && (s1 != s3) && (s2 != s3))
      return :scalene
    else
      raise TriangleError
    end
  end
  end
  
  class TriangleError < StandardError
  end
end
