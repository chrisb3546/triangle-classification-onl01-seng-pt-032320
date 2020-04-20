require "pry"
class Triangle

  attr_accessor :sideone, :sidetwo, :sidethree


  def initialize(sideone, sidetwo, sidethree)
    @sides = []
    @sides << sideone 
    @sides  << sidetwo 
    @sides << sidethree
  end

  # binding.pry
  # def equilateral
  #   @sides[0] == @sides[1]
    
  # end
  def no_kind
    if  @sides[0] == 0 || @sides[1] == 0 || @sides[2] == 0
      return true
    elsif   @sides[0] < 0 && @sides[1] < 0 && @sides[2] < 0
      return true 
    elsif  (@sides[0] + @sides[1] <= @sides[2]) || (@sides[1] + @sides[2] <= @sides[0]) || (@sides[2] + @sides[0] <= @sides[1])
      return true
    #  raise TriangleError
    end
 end
 
  
  def kind 
     if no_kind
      raise TriangleError
      elsif (@sides[0] == @sides[1] && @sides[0] != @sides[2]) || (@sides[1] == @sides[2] && @sides[0] != @sides[2]) || ((@sides[2] == @sides[0] && @sides[0] != @sides[1]))
      :isosceles
   elsif !(@sides[0] == @sides[1] && @sides[0] == @sides[2])
      :scalene
  # elsif @sides.length = 3
   elsif @sides[0] == @sides[1] && @sides[0] == @sides[2]
    :equilateral
    
   end 
  end

   

   class TriangleError < StandardError
         # triangle error code
       end
#   # write code here
end


# Instructions

# - Write a `Triangle` class that accepts three arguments on initialization. Each
#   argument is a length of one of the three sides of the triangle.

# - Give your Triangles an instance method, `kind` that returns, as a symbol, its
#   type. The valid types are:

# 1.  `:equilateral`

# 2.  `:isosceles`

# 3.  `:scalene`

# - The `kind` method should raise a custom error, `TriangleError` if the triangle
#   is invalid. Check out the hint below to understand what makes a triangle
#   invalid. Write a custom error class, `TriangleError` and inherit it from
#   `StandardError`. This custom error class should be defined in the same file as
#   the `Triangle` class, inside the `Triangle` class definition. Like
#   this:

# ```ruby
# # lib/triangle.rb

# class Triangle
#   # triangle code

#   class TriangleError < StandardError
#     # triangle error code
#   end
# end
# ```

# ## Hint

# The sum of the lengths of any two sides of a triangle always exceeds the length
# of the third side. This is a principle known as the _triangle inequality_.

# Further, each side must be larger than 0.

# ## Resources

# - [Exception Handling](http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/)
# - [Basic Mathematics](http://www.basic-mathematics.com/) - [Types of Triangles](http://www.basic-mathematics.com/types-of-triangles.html)

# <p data-visibility='hidden'>View <a href='https://learn.co/lessons/triangle-classification' title='Triangle'>Triangle</a> on Learn.co and start learning to code for free.</p>

