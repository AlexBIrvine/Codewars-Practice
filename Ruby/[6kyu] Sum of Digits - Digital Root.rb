# [6kyu] Sum of Digits / Digital Root
# In this kata, you must create a digital root function.
#
# A digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n. If that value has two digits,
# continue reducing in this way until a single-digit number is produced.
#
# This is only applicable to the natural numbers.

def digital_root(n)

  while (n.to_s.length != 1) do
    total = 0
     num = n.to_s.split('')
       num.each do |i|
         total += i.to_i
       end
       n = total
  end
 return n
end

puts digital_root(132189)
