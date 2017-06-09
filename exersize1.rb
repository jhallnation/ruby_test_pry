require "pry"

puts "What number would you like the computer to guess?"
user_input = gets.chomp.to_i

array = (1..25).to_a
computer_input = array.sample
# updated_array = []

case 
when user_input == computer_input
  puts "Computer guessed your number"
else
  puts "Computer did not gues your number"
    if user_input < computer_input
      puts "Computer guessed to high"
      loop do 
        array.collect do |x|
          if x > computer_input
            array.delete(x)
          break if x <= computer_input
  binding.pry
          end
        end
      end
      # updated_array = (1..computer_input).to_a
    else user_input > computer_input
      loop do
        array.collect do |x|
          if x < computer_input
            array.delete(x)
          break if x >= computer_input
  binding.pry
        end
      end
      # updated_array = (computer_input..25).to_a
  binding.pry
    end
  # we need to compare this number vs answer to see if it is greater or less than
  # if number is greater than answer than it is new high for array
  # if number is lower than answer than it is new low for array
  # array.each do |x|
  #   if number
  end
end

# not finished