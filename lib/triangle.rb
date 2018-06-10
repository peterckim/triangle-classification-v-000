class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one_length, side_two_length, side_three_length)
    @side_one = side_one_length
    @side_two = side_two_length
    @side_three = side_three_length
  end
  
  def kind
    
    if @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
      return :isosceles
    elsif @side_one != @side_two && @side_two != @side_three && @side_one != @side_three
      return :scalene
    else
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
  
  class TriangleError < StandardError
    
  end
end
