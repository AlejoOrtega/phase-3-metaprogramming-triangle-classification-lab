class Triangle
  # write code here
  class TriangleError < StandardError
    def initialize(msg="My default message")
      super
    end
  end



  attr_reader :side1, :side2, :side3
  def initialize( side1, side2, side3)
    side1, side2, side3 = [side1, side2, side3].sort
    if (side1 + side2) <= side3
      raise TriangleError.new('The sum of two sides are not greater than the third ')
    elsif side1 <=0 || side2 <= 0 || side3 <= 0
      raise TriangleError.new('Sides cant be 0 or negative')
    end
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if [@side1, @side2, @side3].uniq.length == 1
      :equilateral
    elsif [@side1, @side2, @side3].uniq.length == 2
      :isosceles
    elsif [@side1, @side2, @side3].uniq.length == 3
      :scalene
    else

    end
  end
end
