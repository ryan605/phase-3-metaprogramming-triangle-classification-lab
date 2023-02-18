class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    arr = [a,b,c].sort
    if (a <= 0 && b <= 0 && c <= 0) || (arr[0] + arr[1] <= arr[2]) || (a <= 0 || b <= 0 || c <= 0)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
      "err"
  end
end