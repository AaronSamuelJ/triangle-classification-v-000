
# class Triangle
#   def initialize(length_1, length_2, length_3)
#     @length_1 = length_1
#     @length_2 = length_2
#     @length_3 = length_3
#   end
# end

class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
      @a, @b, @c = [@a, @b, @c].sort #=> lower to higher
      raise TriangleError if @a <= 0 or @a + @b <= @c #=> a has to be greater than 0, since c is the largest number, the sum
      #=> of a and b
      # return :equilateral if @a == @c
      # return :isosceles if @a == @b or @b == @c
      # return :scalene
      case self 
      when self.a == self.c 
        :equilateral
      when self.a == self.b or self.b == self.c
        :isosceles
      else 
        :scalene
      end
    end
  end

class TriangleError < StandardError

end
