num = (1..999).to_a
sum = Array.new

num.each do |x|
  if x % 3 == 0 
  sum << x
  end
end
num.each do |i|
  if i % 5 == 0 
  sum << i
  end
end

sum = sum.uniq

p sum.inject(:+)