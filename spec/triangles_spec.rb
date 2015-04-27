require('rspec')
require('triangles')

describe(Triangle) do
  describe('#type') do
    it('returns equilateral if all sides are equal') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.type()).to(eq('equilateral'))
    end

    it('Returns isosceles if exactly 2 sides are equal') do
      test_triangle = Triangle.new(2,2,4)
      expect(test_triangle.type()).to(eq('isosceles'))
    end

    it('Returns isosceles if exactly 2 sides are equal') do
      test_triangle = Triangle.new(3,2,2)
      expect(test_triangle.type()).to(eq('isosceles'))
    end
  end


end
