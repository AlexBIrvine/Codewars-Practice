# [7kyu] Categorize New Member
# The Western Suburbs Croquet Club has two categories of membership, Senior and Open.
# They would like your help with an application form that will tell prospective members which category they will be placed.
#
# To be a senior, a member must be at least 55 years old and have a handicap greater than 7.
# In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.
#
# Input
# Input will consist of a list of lists containing two items each.
# Each list contains information for a single potential member.
# Information consists of an integer for the person's age and an integer for the person's handicap.
#
# Output
# Output will consist of a list of string values (in Haskell: Open or Senior)
# stating whether the respective member is to be placed in the senior or open category.



def openOrSenior(data)

  # Create output array
  results = []

  # Loop through each array in data array,
  # Check if first element (age) is at least 55 & second element (handicap) is over 7.
  # If true, then it's a senior member.  Append "Senior"
  # If false, then it's an open member.  Append "Open"
  data.each do |member|
    data.each do |member|
    (member[0] > 54 && member[1] > 7) ? results << "Senior" : results << "Open"
  end

  # Return output array
  return results
end

# Run and print results
puts openOrSenior([[45, 12],[55,21],[19, -2]])

