require "pry"
# needs validation for answer if they are not odd or even or 1 or 2 to say not valid and reask
loop do
  puts "Would you like to play"
  answer = gets.chomp.downcase!
  if answer == 'yes'
    puts "Odd or even?"
    odd_or_even = gets.chomp.downcase!
    puts '1 or 2?'
    player_num = gets.chomp.to_i

    nums = [1, 2]


    computer_num = nums.sample
    p "You chose #{player_num}"
    p "You chose #{computer_num}"

    total = player_num + computer_num

    if total % 2 == 0
      sum = 'even'
      if sum = odd_or_even
        p "The total was #{total}, that means You Won!"
      else
        p "The total was #{total}, Computer wins!"
      end
    else
      sum = 'odd'
        if sum = odd_or_even
        p "The total was #{total}, that means You Won!"
      else
        p "The total was #{total}, Computer wins!"
      end
    end

  elsif answer == 'no'
    # stops interation
    #else p not valid response
  end
end

# needs validations
