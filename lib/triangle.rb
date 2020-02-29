class Triangle
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind 
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      begin
      raise TriangleError 
      rescue TriangleError => error 
        error.message
      end
    
    elsif @side_one == @side_two && @side_one == @side_three 
      :equilateral 
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles 
    else 
      :scalene
    end 
  end
  
  class TriangleError < StandardError 
    
    def message 
      "You done fucked up this triangle, dawg. It's gonna be a no for me."
    end
    
  end 
  
end
