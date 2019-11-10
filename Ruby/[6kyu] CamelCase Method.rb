# [6kyu] CamelCase Method
# Write simple .camelCase method (camel_case function in PHP or CamelCase in C#) for strings.
# All words must have their first letter capitalized without spaces



class String
  def camelcase
    self.split.map{|i| i.capitalize}.join('')
  end
end

puts "hello world".camelcase
