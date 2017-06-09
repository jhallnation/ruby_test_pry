require 'prime'

array =(1..600851475143).to_a
# array = array.delete_if {|n| n % 3 == 0 } && array.delete_if {|n| n.even? }
p array

# not complete