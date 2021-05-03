=begin
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end

def display_board(sq1='', sq2='')
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "     |     |"
  puts "     |     |"
  puts ""
end
# Board data structure will be a hash
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = "X"}
  new_board
end

board = initialize_board #will keep track of state of the game
display_board(board)