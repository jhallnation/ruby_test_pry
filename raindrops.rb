def raindrops number
  arr =[]
  if number % 3 == 0
    arr << "pling"
  end
  if number % 5 == 0
    arr << "plang"
  end
  if  number % 7 == 0
    arr << "plong"
  end
  if arr.any? == true
    p arr.join
  else
    p number
  end
end

raindrops 30

# http://exercism.io/exercises/ruby/raindrops/readme