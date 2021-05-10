INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
BOARD_SIZE = 3

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

WINNING_SCORE = 2

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, _player)
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, joiner = ', ', word = 'or')
  if array.length == 2
    array.join(" #{word} ")
  elsif array.length < 2
    array.join(joiner)
  else
    array.join(joiner).insert(-2, "#{word} ")
  end
end

def who_goes_first
  prompt("Who would you like to go first: player, computer, or random?")
  current_player = ''
  options = ['player', 'computer', 'random']

  loop do
    current_player = gets.chomp.downcase
    break if options.include?(current_player)
    prompt("Please enter a valid response: player, computer, or random")
  end

  if current_player == 'random'
    current_player = ['player', 'computer'].sample
  end
  current_player
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  else
    'player'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square to place a piece: #{joinor(empty_squares(brd))}"
    loop do
      square = gets.chomp
      break if valid_integer?(square)
      prompt("Please enter a valid integer")
    end
    square = square.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def valid_integer?(num)
  num == num.to_i.to_s
end

# rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity
def computer_places_piece!(brd)
  square = nil

  # Offense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # Defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # Pick square 5 if available
  if empty_squares(brd).include?(5)
    square = 5
  end

  # Random square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity

# rubocop:disable Style/EmptyElse
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == BOARD_SIZE - 1
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end
# rubocop:enable Style/EmptyElse

def board_full?(brd)
  empty_squares(brd) == [] # or empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def welcome
  prompt("Welcome to Tic Tac Toe!")
  prompt("The first player to #{WINNING_SCORE} points, wins!")
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == BOARD_SIZE
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == BOARD_SIZE
      return 'Computer'
    end
  end
  nil
end

def calculate_match_score(scoreboard, winner)
  scoreboard[winner.to_sym] += 1 unless winner.nil?
end

def display_match_results(scoreboard)
  prompt("Current score")
  prompt("  Player: #{scoreboard['Player'.to_sym]}")
  prompt("  Computer: #{scoreboard['Computer'.to_sym]}")
end

def display_grand_winner(score)
  grand_winner = score.key(WINNING_SCORE).to_s.capitalize
  prompt("#{grand_winner} is the grand winner!")
end

def match_over?(score)
  score.value?(WINNING_SCORE)
end

def play_again?
  prompt("Would you like to play again?")
  play_again = ''

  loop do
    play_again = gets.chomp.downcase
    break if ['y', 'yes', 'n', 'no'].include?(play_again)
    prompt('Please enter valid answer (y/yes or n/no)')
  end

  ['y', 'yes'].include?(play_again)
end

def reset_score(score)
  score.replace({ 'Player': 0, 'Computer': 0 })
end

def enter_to_continue
  prompt('Press enter to continue')
  STDIN.gets
end

system 'clear'
scoreboard = { 'Player': 0, 'Computer': 0 }
welcome
enter_to_continue
system 'clear'
loop do
  loop do
    current_player = who_goes_first
    board = initialize_board

    loop do
      display_board(board, current_player)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, current_player)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    winner = detect_winner(board)

    calculate_match_score(scoreboard, winner)
    display_match_results(scoreboard)
    enter_to_continue
    system 'clear'

    break if match_over?(scoreboard)
  end
  display_grand_winner(scoreboard)

  reset_score(scoreboard)
  break unless play_again?
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
