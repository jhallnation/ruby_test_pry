p (2 ** 1000).to_s.split(//).map { |x| x.to_i }.inject(:+)
p (2 ** 1000).to_s.split(//).map { |x| x.to_i }.sum
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)
p (2 ** 1000).to_s.split(//).map(&:to_i).sum
p (2 ** 1000).to_s.split('').map { |x| x.to_i }.inject(:+)
p (2 ** 1000).to_s.split('').map { |x| x.to_i }.sum

