require 'pry'

class Triangle

  attr_accessor :l1, :l2, :l3
  
  def initialize(l1, l2, l3)
    if l1 == 0 || l2 == 0 || l3 == 0 
        begin
          raise TriangleError
        rescue TriangleError => error 
          puts error.message
        else 
          @l1 = l1
          @l2 = l2
          @l3 = l3
        end
  end

  def kind
    
    if @l1 == @l2 && @l1 == @l3
      :equilateral
    elsif @l1 == @l2 && @l2 != @l3
      :isosceles
    elsif @l2 == @l3 && @l1 != @l3
      :isosceles
    elsif @l3 == @l1 && @l2 != @l3
      :isosceles
    elsif @l1 != @l2 && @l2 != @l3
      :scalene
  end
end

  class TriangleError < StandardError
    def message
      "you messed up"
    end
  end

end
binding.pry
