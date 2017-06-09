require "pry"
  puts "What number would you like the computer to guess?"
  user_input = gets.chomp.to_i

  array = (1..25).to_a
loop do
  computer_input = array.sample

  if user_input == computer_input
    puts "Computer guessed your number"
    break
  else
    puts "Computer did not gues your number"
    if user_input < computer_input
        puts "Computer guessed to high"
        array.reject! {|x| x >= computer_input}
        p array
    else user_input > computer_input
        puts "Computer guessed to low"
        array.reject! {|x| x <= computer_input}
        p array
    end
  end
end

