 # x Given an array with numbers, write a program that efficiently answers queries of the form: "Which is the nearest larger value for the number at position i?", where distance is the difference in array indices. For example in the array [1,4,3,2,5,7], the nearest larger value for 4 is 5. 

 def nearest_largest(arr, number)
  arr.each do |x|
    if x == number
      arr.each_with_index do |n, i|
        if n == number
          @word = i
          p @word
        elsif n > number
          @other_word = i
          p @other_word
          # need to compare index
        end
      end
    end
  end
 end

 nearest_largest([2, 8, 5, 4, 1, 3, 9, 6, 7], 5)

 # not complete