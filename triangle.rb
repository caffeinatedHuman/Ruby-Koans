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
  # WRITE THIS CODE
  if a<=0 || b<=0 || c<=0
    raise TriangleError
  end

  length_array = [a,b,c]
  length_array.sort!
  
  puts length_array
  if length_array[0]+length_array[1]<=length_array[2]
    raise TriangleError
  end

  if a==b && b==c
    return :equilateral
  elsif ((a==b)&&(a!=c)&&(b!=c))||((a!=b)&&(b==c)&&(a!=c))||((a==c)&&(b!=c)&&(a!=b))
    return :isosceles
  elsif (a!=b) && (b!=c) && (a!=c)
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
