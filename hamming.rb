def hamming_distance(string1, string2)
  difference = []
  string1_arr = string1.split(//)
  string2_arr = string2.split(//)
  string1_arr.each_with_index do |a, b|
    string2_arr.each_with_index do |z, y|
      if b == y
        if a != z
          difference << z
        end
      end
    end
  end
  p difference.length
end

hamming_distance('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT')


# see http://exercism.io/exercises/ruby/hamming/readme