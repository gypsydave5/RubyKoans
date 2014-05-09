# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

# First try - a little long...
#
# def triangle(a, b, c)
#   begin
#     raise TriangleError, "No triangles with 0 side length" if a == 0 || b == 0 || c == 0
#     raise TriangleError, "No triangles with negative side length" if a < 0 || b < 0 || c < 0
#     raise TriangleError, "Impossible triangle!"  if (a + b) <= c || (a + c) <= b || (b + c) <= a
#   end
#   tri = [a,b,c].uniq
#   return :scalene if tri.length == 3
#   tri.length == 2 ? :isosceles : :equilateral
# end

def triangle(a, b, c)
  begin
    raise TriangleError, "No triangles with 0 or less side length" if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "Triangles can't have a side that's less than or equal the sum of the other two sides."  if (a + b) <= c || (a + c) <= b || (b + c) <= a
  end
  [:equilateral, :isosceles, :scalene].fetch( ([a,b,c].uniq.length) -1 )
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
