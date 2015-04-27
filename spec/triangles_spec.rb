require('rspec')
require('triangles')
require('pry')

describe(Triangle) do
  describe("#triangle?") do
    it("returns wether it is a triangle or not") do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.triangle?()).to(eq(true))
    end
  end
  describe("#type") do
    it("will return whether or not it is a isosceles or scalene triangle") do
      new_triangle = Triangle.new(2,2,3)
      expect(new_triangle.type()).to(eq("This is an isosceles triangle"))
    end
  end
end
