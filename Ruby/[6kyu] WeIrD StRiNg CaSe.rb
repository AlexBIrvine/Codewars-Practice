# [6kyu] WeIrD StRiNg CaSe                                                      2017/9/27
#========================================================================================
# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string,
# and returns the same string with all even indexed characters in each word upper cased,
# and all odd indexed characters in each word lower cased.
# The indexing just explained is zero based, so the zero-ith index is even,
# therefore that character should be upper cased.
#
# The passed in string will only consist of alphabetical characters and spaces(' ').
# Spaces will only be present if there are multiple words.
# Words will be separated by a single space(' ').
#========================================================================================

def weirdcase(string)
  #gets array of strings, creates empty results array
  arr = string.split (' ')
  result = []

  #iterates over array of strings..
  arr.each do |i|
    #..breaking apart each string into another array of characters
    temp = i.chars
    #then iterating over that array of characters..
    (0..temp.length-1).each do |j|
      #..checking to see if that index is even.  If so, make that letter uppercase
      if j.even?
        temp[j] = temp[j].upcase
      end
    end
    #after iterating through each letter and uppercasing the even indexes,
    #join the chars into a string, then append that string to results array
    result << temp.join('')
  end
  #after each individual word is modified, join the chars of results into one string,
  #then return that as the final result!
  return result.join(' ')
end

puts weirdcase("This is a test")
