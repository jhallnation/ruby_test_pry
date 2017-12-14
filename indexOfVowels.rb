# We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).

# So given a string "super", we should return a list of [2, 4].

# Some examples:
# Mmmm  => []
# Super => [2,4]
# Apple => [1,5]
# YoMama -> [1,2,4,6]
# NOTE: Vowels in this context refers to English Language Vowels - a e i o u y

# NOTE: this is indexed from [1..n] (not zero indexed!)

# vowels = aeiouyAEIOUY

# codewars kata by willjharmer

def IndexOfVowels s
  z = []
  s.split('').each_with_index { |x, i| x =~ /[aeiouyAEIOUY]/ and  z << i + 1  }
  return z
end

 # or
 
def IndexOfVowels s
  s.chars.map.with_index(1) { |x, i| i if x =~ /[aeiouy]/i  }.compact
end
