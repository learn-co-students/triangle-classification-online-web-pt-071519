  require 'pry'

class Triangle
    attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
#equilateral: sides must be a=b=c
#isosceles: sides must be a=b || b=c || a=c
#scalene: a != b != c
#if a+b!>c || a+c!>b || b+c!>a, throw TriangleError
    if !(@a+@b>@c) || !(@a+@c>@b) || !(@b+@c>@a)
        raise TriangleError
        puts message

    elsif @a == @b && @b == @c
      :equilateral
   elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def messagereader
      "This is not a valid triangle"
    end
  end

end
