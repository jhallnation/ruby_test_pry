#reverse a string without using the .reverse method

puts 'type in a ward'
s = gets.chomp
b = s.length - 1

while b >= 0
  print s[b]
  b = b - 1
end
