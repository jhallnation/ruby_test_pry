 # x Given an array with numbers, write a program that efficiently answers queries of the form: "Which is the nearest larger value for the number at position i?", where distance is the difference in array indices. For example in the array [1,4,3,2,5,7], the nearest larger value for 4 is 5. 

 def nearest_largest(arr, number)
  @other_numbers_index = []
  @number_index = []
  @difference = []
  @distance = []
  @closest_indexes = []
  arr.each do |x|
    if x == number
      arr.each_with_index do |n, i|
        case
        when n > number
          @other_numbers_index << i
        when n == number
          @number_index << i          
        end       
      end
      @other_numbers_index.each do |y|
        @difference << y - @number_index[0]
      end
      @difference.map do |z|
        @distance << z.abs
      end
      # @larger_value_distance = @distance.sort[0]
      @closest_indexes << @distance.sort[0]
      @closest_indexes << @distance.sort[1]
      p @closest_indexes
      @difference_of_closest = @closest_indexes[0] - @closest_indexes[1]
      p @difference_of_closest
      # conditon not working

    end
  end
end

def which_nearest
  if @difference_of_closest =! 1 || -1
    # @larger_value_distance = @distance.sort[0]
    # larger_value_index = @larger_value_distance - @number_index[0]
    # p arr[larger_value_index.abs]
    p 'practice'
  else
    p 'test'
  end
end


nearest_largest([2, 8, 5, 4, 1, 3, 9, 6, 7], 3)
which_nearest

# not complete
