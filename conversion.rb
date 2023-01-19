=begin
Create a method convert_temperature which takes arguments as Input and will return the Output as below:

Input: convert_temperature(0, input_scale: 'celsius', output_scale: 'kelvin')
Output: 273.15

Input: convert_temperature(0, input_scale: 'celsius', output_scale: 'fahrenheit')
Output: 32.0
     
=end

def convert_temperature(tem, input_scale, output_scale="celsius")
  puts output_scale
  puts "#{tem} #{input_scale} #{output_scale}"
  case input_scale
  when "celsius"
    if (output_scale == "fahrenheit")
      (tem*9/5+32)
    elsif(output_scale == "kelvin")
      ((tem + 273.15))
    else
      (tem)
    end
  when "kelvin"
    if(output_scale == "fahrenheit")
      (tem*9/5-459.67)
    elsif(output_scale == "celsius")
      (tem-273.15)
    else
      (tem)
    end
  when "fahrenheit"
    if (output_scale == "celsius")
      (tem-32/(9/5))
    elsif (output_scale == "kelvin")
      (tem+459.67)*(5/9)
    else
      (tem)
    end
  else
    "hello"
  end
end

puts convert_temperature(10, "kelvin", "fahrenheit")
