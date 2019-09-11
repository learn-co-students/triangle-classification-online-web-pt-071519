class Triangle

  def initialize (l1,l2,l3)
    @l1=l1
    @l2=l2
    @l3=l3
  end

  def kind
    if (@l1+@l2<=@l3)||(@l2+@l3<=@l1)||(@l1+@l3<=@l2)
      raise TriangleError
    elsif
      @l1==0 ||@l2==0 ||@l3==0
      raise TriangleError
    else
        if
        (@l1==@l2) && (@l2==@l3)
        :equilateral
        elsif
          (@l1==@l2) || (@l2== @l3) || (@l3==@l1)
          :isosceles
        else
          (@l1!=@l2) && (@l2!=@l3) && (@l3!=@l1)
          :scalene
      end
    end
end

  class TriangleError < StandardError
    # triangle error code
  end
end
