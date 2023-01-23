=begin
Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num until the array length reaches length.

array_of_multiples(7, 5) ➞ [7, 14, 21, 28, 35]
array_of_multiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]
array_of_multiples(17, 6) ➞ [17, 34, 51, 68, 85, 102]   
=end

class ArrLength
  def initialize(num , leng)
    arr = (1..leng).collect {|x| x*num}
    p arr
  end
end

ex1 = ArrLength.new(17, 6)
# def arr_lengrth(num , leng)
#   arr = (1..leng).collect {|x| x*num}
#   p arr 
# end
# arr_lengrth(17, 6)
