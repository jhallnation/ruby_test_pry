require 'pry'
# Calculate the number of gold pieces on a chessboard given that the number on each wquare doubles.

# there once was a wise servent who saved the life of a prince. The king promised to pay whatever the servent could dream up. Knowing that the king loved chess, the servent told the king he would like to have gold pieces.  One gold piece on the first square of a chess board. Two pieces on the next. Four on the third ans so on.

# there are 64 squares on a chessboard

# write code that shows how many gold pieces were on each square and the total number of gold.

@square = (1..64).to_a
@gold_pieces = []
@total_to_space = []
def calculation space
  @square.each do |i|
    if i == 1
      @gold_pieces << i 
    elsif i > 1
      piece = @gold_pieces.last
      @gold_pieces << piece * 2
    end
  end
    space = @gold_pieces[space - 1]
    p space
    @gold_pieces.each do |x|
      hey = @gold_pieces[x]
      if space < hey
        @total_to_space << x
      binding.pry
      end
    end
    p total_to_space
    p @gold_pieces.inject(:+)
end
calculation 64

# original goal worked, but trying to add more to it
