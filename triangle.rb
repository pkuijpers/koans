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
def triangle(a, b, c)
  fail TriangleError if a == 0 and b == 0 and c == 0
  fail TriangleError if a < 0 or b < 0 or c < 0

  # No side can be longer than the other two combined
  fail TriangleError if (a >= b + c) or (b >= a + c) or (c >= a + b)

  return :equilateral if (a == b) and (b == c)
  return :scalene if (a != b) and (b != c) and (a != c)
  :isosceles
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
