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

	#raise TriangleError, "why the exception happened" if (a==0 or b==0 or c==0)


 	s = (a + b + c) / 2.0
  
	# test a valid triangle
	valid = (s - a) * (s - b) * (s - c)
  
  	if a <= 0 || b <= 0 || c <= 0 || valid <= 0 then 
    	raise TriangleError
  	end

	if (a==b) and (b==c)
		return :equilateral
	end
	if (a==b) or (b==c) or (a==c)
		return :isosceles
	else
		return :scalene
	end


  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
