
def pig_latin sentance
  array = []
  sentance.split(' ').each do |x|
    array << "#{x[1..-1]}#{x[0]}ay"
  end
  array.join(' ')
end

p pig_latin "this will work with everything exept single syllable words"

# this will work with everything exept single syllable words