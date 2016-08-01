class Triangle
attr_accessor :side_1,:side_2,:side_3

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if ((side_1 + side_2 > side_3) && (side_2 + side_3 > side_1) && (side_1 + side_3 > side_2)) && (side_1 > 0 && side_2 > 0 && side_3 > 0)
      if side_1 == side_2 && side_2 == side_3
        return :equilateral
      elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
        return :scalene
      elsif (side_1 == side_2 && side_1 != side_3) || (side_1 == side_3 && side_2 != side_3) || (side_2 == side_3 && side_1 != side_3)
        return :isosceles
      end
    else
      raise TriangleError
    end
  end
end


class TriangleError < StandardError
   "Not a valid triangle"
end
