# add each set of numbers that are separated by comma together then adds the new numbers together


def comma_addition number
  x_arr = []
  y_arr = []
  num_split = number.split(',')
  num_split.each do |x|
    x_arr << x.scan(/\d/).map {|i| i.to_i}
  end
  x_arr.each do |y|
    y_arr << y.inject(:+)
  end
  p y_arr.inject(:+)
end

comma_addition ('234,223,123')



# not done, dont remember the original problem