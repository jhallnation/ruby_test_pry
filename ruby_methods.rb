require "pry"

array = (1..25).to_a

number = array.sample

puts "what number would you like to guess?"
answer = gets.chomp.to_i

loop do 
  if answer > number
    p 'you need to guess lower'
    puts 'would you like to try again'
    response = gets.chomp.downcase
    break if response = 'no' || 'nope'
  elsif answer < number
    p 'you need to guess higher'
    puts 'would you like to try again'
    response = gets.chomp.downcase
    break if response = 'no' || 'nope'
  else
  p "you are correct!"
  end
end
