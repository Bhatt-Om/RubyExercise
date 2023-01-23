=begin
reate method & take array, month name in arguments, return the total number of a given month.

upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept") ➞ 2
upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct") ➞ 1
=end
arr = ["Sept 22", "Sept 21", "Oct 15"]

class ArrGrap 
  def initialize(arr , str)
    @arr = arr
    @str = str
  end

  def result
    p @arr.grep(/#@str+/i).count 
  end
end

obj = ArrGrap.new(arr , "SEP")
obj.result
