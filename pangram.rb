@arr = ('a'..'z').to_a
@simular = []

def input
  puts 'Type in a sentance!'
  @sentance = gets.chomp
end

def pangram 
  sentance_arr = @sentance.split(//)
  sim = sentance_arr & @arr
  @simular << sim
end

def compare
  if @arr == @simular.flatten.sort
    p "It is an Pangram!"
  else
    p "It is not an Pangram!"
  end
end


input
pangram 
compare
