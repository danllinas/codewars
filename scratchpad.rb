class Quadrilateral

  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
  end

  def perimeter
    sum = 0
    # sides = @sides
    @sides.each do |i|
      sum += i
    end
    case @sides.count
    when 4
      sum
    when 2
      sum * 2
    when 1
      sum * 4
    end
  end

end

class Rectangle < Quadrilateral
def initialize(side1_2, side3_4)
  @sides = [side1_2, side3_4]
end
end

class Trapezoid < Quadrilateral
def initialize(side1, side2, side3_4)
  @sides = [side1, side2, side3_4]
end
end

class Square < Rectangle
def initialize(side1_2_3_4)
  @sides = [side1_2_3_4]
end
end

class Rhombus <Trapezoid
def initialize(side1_2_3_4)
  @sides = [side1_2_3_4]
end
end

def test
  quad = Quadrilateral.new(1,2,3,4)
  rectangle = Rectangle.new(1,2)
  square = Square.new(1)
  rhombus = Rhombus.new(1)

  puts quad.perimeter == 10
  puts rectangle.perimeter == 6
  puts square.perimeter == 4
  puts rhombus.perimeter == 4
end

test
