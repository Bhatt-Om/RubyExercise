=begin
Input: marks = {"Yash":23, "Abhi":40, "Sahil":88, "Rohan":60}, passed_marks (Test cases: 0, 30, 80)
Make a method which take arguments as marks(hash), passed_marks and will return the hash like {"Failed"=>[["Yash", 23]], "Passed"=>[["Abhi", 40], ["Sahil", 88], ["Rohan", 60]]}
=end
  
mark = {"Yash":23,"Abhi":40,"Sahil":88,"Rohan":60}

def result(mark, passed_mark)
  mark.group_by {|key, value| (value > passed_mark) ? "Pass" : "Fail"}
end

p result(mark, 40)
