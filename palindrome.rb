puts "What word would you like to check?"
@word = gets.chomp

def palindrome?
  original = @word.split(//)
  reversed = []
  times = original.length - 1
  while times >= 0
    reversed << original[times]
    times = times - 1
  end
  original = original.join.downcase
  reversed = reversed.join.downcase
  p original == reversed
end

palindrome?