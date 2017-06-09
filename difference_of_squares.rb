def difference_of_squares num
  arr1 = (1..num).to_a
  arr2 = (1..num).to_a
  square = arr1.inject(:+)**2
  arr2.map! do |x|
    x**2
  end
  sum = arr2.inject(:+)
  difference = square - sum
  p "The square of the sum is #{square}"
  p "The sum of the squares is #{sum}"
  p "The difference of squares is #{difference}"
end

difference_of_squares 100