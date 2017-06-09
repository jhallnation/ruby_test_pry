@arr = []


def comma_addition number
  num_split = number.split(',')
  num_split.each do |x|
     @arr << x.split(//)
   end
   @arr.map do |y|
    y.each do |z|
      z.to_i
    end
  end
  p @arr
end

comma_addition ('123,123,123')


# def separate_comma(number)
#   number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
# end



# not done, need to add the numbers seperated by a comma together