class Triangle
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind 
    if !@side_one || !@side_two || !@side_three
      begin
      raise TriangleError 
      rescue 
      end
    
    elsif @side_one == @side_two && @side_one == @side_three 
      :equilateral 
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles 
    else 
      :scalene
    end 
  end
  
  class TriangleError 
    
  end 
  
end
