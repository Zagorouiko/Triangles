class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:type) do
    non_triangle = (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
    equilateral = (@side1 == @side2) && (@side2 == @side3)
    isosceles = (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
    
    if non_triangle
      'NOT a triangle'
    elsif equilateral
      'equilateral'
    elsif isosceles
      'isosceles'
    else
      'scalene'
    end
  end
end
