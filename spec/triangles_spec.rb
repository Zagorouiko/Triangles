require('rspec')
require('triangles')

describe(Triangle) do
  describe('#type') do
    it('returns equilateral if all sides are equal') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.type()).to(eq('equilateral'))
    end

    it('Returns isosceles if exactly 2 sides are equal') do
      test_triangle = Triangle.new(3,3,4)
      expect(test_triangle.type()).to(eq('isosceles'))
    end

    it('Returns isosceles if exactly 2 sides are equal') do
      test_triangle = Triangle.new(3,2,2)
      expect(test_triangle.type()).to(eq('isosceles'))
    end
    it('Returns scalene if no sides are equal') do
      test_triangle = Triangle.new(4,2,3)
      expect(test_triangle.type()).to(eq('scalene'))
    end
    it('Returns scalene if no sides are equal') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.type()).to(eq('scalene'))
    end

    it('Returns NOT a triangle if one side is at least as long as the other two combined') do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.type()).to(eq('NOT a triangle'))
    end
  end


end
