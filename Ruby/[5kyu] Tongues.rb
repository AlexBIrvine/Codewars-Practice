# [5kyu] Tongues

def tongues(code)

  vowels = ['a', 'i', 'y', 'e', 'o', 'u']
  consonants = ['b', 'k', 'x', 'z', 'n', 'h', 'd', 'c', 'w', 'g', 'p', 'v', 'j', 'q', 't', 's', 'r', 'l', 'm', 'f']
  results = []

  code.each_char do |c|
    d = c.downcase

    if vowels.include?(d)
      n = vowels.index(d) - 3
      m = vowels.slice(n)
      /[A-Z]/.match(c) ? results.push(m.upcase) : results.push(m)

    elsif consonants.include?(d)
      n = consonants.index(d) - 10
      m = consonants.slice(n)
      /[A-Z]/.match(c) ? results.push(m.upcase) : results.push(m)

    else
      results.push(c)
    end
  end

  return results.join
end

puts tongues("Ita dotf ni dyca nsaw ecc.")