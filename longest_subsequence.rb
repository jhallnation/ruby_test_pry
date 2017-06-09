puts 'Type in the first sentance!'
@string_one = gets.chomp

puts 'Type in the second sentance!'
@string_two = gets.chomp

@string_one_arr = []
@string_two_arr = []
@simular_array = []

def push_to_arr 
  @string_one_arr << @string_one.split(/ /)
  @string_two_arr << @string_two.split(/ /)
end

def compare_arrays
  simular = @string_one_arr.flatten & @string_two_arr.flatten
  @simular_array << simular
end

def longest_word
  longest = @simular_array.flatten.max_by(&:length)
  p longest
end

push_to_arr
compare_arrays
longest_word