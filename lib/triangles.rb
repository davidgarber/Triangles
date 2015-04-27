class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    if @side1 == @side2 && @side2 == @side3 && @side1 == @side3
      "This is an equilateral triangle"
    elsif @side1 + @side2 > @side3
      true
    elsif @side1 + @side3 > @side2
      true
    elsif @side2 + @side3 > @side1
      true
    elsif
      "This is not a triangle"
    end
  end
  define_method(:type) do
    if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      "This is an isosceles triangle"
    else
      "This is a scalene triangle"
    end
  end
end
