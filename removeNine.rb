# Write a function that removes every lone 9 that is inbetween 7s.

# seven_ate9('79712312') => '7712312'
# seven_ate9('79797') => '777'
# Input: String Output: String
# kata from debri

def seven_ate9 s
  a = s.split('')
  a.each_with_index do |x,i|
    if x === '7'
      if a[i+2] === '7'
        if a[i+1] === '9'
          a.delete_at(i+1)
        end
      end
    end 
  end
  return a.join()
end

# better answer

def seven_ate9(s)
  s.gsub(/(?<=7)9(?=7)/,'')
end
