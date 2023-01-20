=begin
Create method & add two digit number in arguments, return true if that number contains one even and one odd digit.

Test Cases: 
one_odd_one_even(12) ➞ true
one_odd_one_even(55) ➞ false
one_odd_one_even(22) ➞ false
=end

#Condition Chaining

class ArrAll
  def initialize(number)
    @@number = number
  end

  def result
    @num = @@number.to_s.chars.each_slice(1).map{|x| x.join.to_i}
    p ((@num.all? {|x| x.even?} || @num.all? {|x|x .odd?}) ? false : true)
  end
end

obj1 = ArrAll.new(22)
obj1.result
