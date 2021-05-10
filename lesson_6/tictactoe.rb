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

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # coumns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# Board data structure will be a hash
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    # if the user inputs a valid/avaiable choice
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER # Save into board hash
end

def computer_places_piece(brd)
  square = empty_squares(brd).sample
  # Represents an array of integers of what is available on the bord
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == [] # or empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
  # detect winner should return boolean, so use !! to be a boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line| # line is an array
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == PLAYER_MARKER &&
    #       brd[line[1]] == PLAYER_MARKER &&
    #       brd[line[2]] == PLAYER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      # * line is splat operator... works same as below
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil # represents no one has won yet
end

loop do
  board = initialize_board
  # will keep track of state of the game

  loop do
    display_board(board)

    player_places_piece(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    # detect winner should return a string
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"


=begin
LS solution for joinor
def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end
Using a case statement works well here because we need to
perform different actions based on the number of elements in arr.
If arr has 2 elements, then a delimiter isn't required and we can
just print the 2 elements, separated by the value of word. If
arr has more than 2 elements, then we permanently mutate the
last element with arr[-1] = and prepend the value of word. After
we've modified the last array element, we can just use Array#join
to join the elements.
=end

# if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == PLAYER_MARKER &&
    #       brd[line[1]] == PLAYER_MARKER &&
    #       brd[line[2]] == PLAYER_MARKER
    #   return 'Computer'
    # end

=begin

Alternative loop (before refacotring recommended by LS):

    first_player = who_goes_first?
    board = initialize_board

    loop do
      display_board(board, first_player)

      if first_player == 'player' || first_player == 'p'
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      else
        computer_places_piece!(board)
        display_board(board, first_player)
        break if someone_won?(board) || board_full?(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    end
=end
