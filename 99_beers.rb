counter = 100
99.downto(2)  do 
  counter = counter - 1
  p "#{counter} bottles of beer on the wall, #{counter} bottles of beer. Take one down pass it around, #{counter-1} bottles of beer on the wall"
end
  p "1 bottles of beer on the wall, 1 bottles of beer. Take it down pass it around, no more bottles of beer on the wall"
  p "No more bottles of beer on the wall, no more bottles of beer.  Go to the store and buy some more, 99 bottles of beer on the wall."
