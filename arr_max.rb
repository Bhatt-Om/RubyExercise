=begin
Create a function which returns the type of triangle, given the side lengths. Return the following values if they match the criteria.

No sides equal: "scalene"
Two sides equal: "isosceles"
All sides equal: "equilateral"
Less or more than 3 sides given: "not a triangle"

get_triangle_type([2, 6, 5]) ➞ "scalene"
get_triangle_type([4, 4, 7]) ➞ "isosceles"
get_triangle_type([8, 8, 8]) ➞ "equilateral"
get_triangle_type([3, 5, 5, 2]) ➞ "not a triangle"   
=end

# def demo(*args)
#       a = *args
#       p a.count 
# end
# demo(1,2)

# arr.uniq.map {|x| arr.count(x)}.max

class ArrMax
  def initialize(*args)
    @a = *args
    @count = @a.count
    # p @count
  end

  def result
    case @count
    when 3
      a = @a.uniq.map {|x| @a.count(x)}.max
      if(a == 1)
        print ("scalene")
        elsif(a == 2)
          print ("isosceles")
        else
          print ("equilateral")
      end
    else
      print "#@a is not a triangle"
    end
  end 
end

obj = ArrMax.new(1,0,1)
obj.result
