require('rspec')
require('triangles')
require('pry')

describe(Triangle) do
  describe("#triangle?") do
    it("returns wether it is a triangle or not") do
      new_triangle = Triangle.new(2,3,4)
      expect(new_triangle.triangle?()).to(eq("This is a triangle"))
    end
  end
  describe("#triangle?") do
    it("returns whether it is a triangle or not") do
      new_triangle = Triangle.new(2,2,200)
      expect(new_triangle.triangle?()).to(eq("This is not a triangle"))
    end
  end
  describe("#type") do
    it("will return whether or not it is a isosceles or scalene triangle") do
      new_triangle = Triangle.new(2,2,3)
      expect(new_triangle.type()).to(eq("This is an isosceles triangle"))
    end
  end
end
