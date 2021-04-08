VALID_CHOICES = { "rock" => 'r',
                  "paper" => 'p',
                  "scissors" => 's',
                  "spock" => 'sp',
                  "lizard" => 'l' }

GAME_RULES = {  'scissors' => ['paper', 'lizard'],
                'paper' => ['rock', 'spock'],
                'rock' => ['lizard', 'scissors'],
                'lizard' => ['spock', 'paper'],
                'spock' => ['scissors', 'rock'] }

WINNING_SCORE = 5

def prompt(message)
  puts("=> #{message}")
end

def clear_screen
  system('clear') || system('cls')
end

def enter_to_continue
  prompt('Press enter to continue')
  STDIN.gets
end

def determine_player_choice
  player_choice = prompt_player_choice
  if VALID_CHOICES.value?(player_choice)
    VALID_CHOICES.key(player_choice)
  else
    player_choice
  end
end

def display_valid_choices
  VALID_CHOICES.each do |word, shorthand|
    puts "   #{word} (#{shorthand})"
  end
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice) || VALID_CHOICES.value?(choice)
end

def prompt_player_choice
  prompt("The first player to 5 wins, wins the match!")
  player_choice = ''

  loop do
    prompt("Choose one: ")
    display_valid_choices
    player_choice = gets.chomp.downcase
    break if valid_choice?(player_choice)
    prompt("That's not a valid choice.")
  end

  player_choice
end

def determine_computer_choice
  computer_choice = VALID_CHOICES.keys.sample
end

def win?(first, second)
  GAME_RULES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def get_results(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  end
end

def calculate_match_score(score, winner)
  score[winner.to_sym] += 1 unless winner.nil?
end

def display_choices(player_choice, computer_choice)
  prompt("You chose: #{player_choice}")
  prompt("Computer chose: #{computer_choice}")
end

def display_match_results(score)
  prompt("Current score")
  prompt("  Player: #{score['player'.to_sym]}")
  prompt("  Computer: #{score['computer'.to_sym]}")
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
  score.replace({ 'player': 0, 'computer': 0 })
end

prompt("Welcome to the 'Rock, Paper, Scissors, Lizard, Spock' Game!")
enter_to_continue
clear_screen

score = { 'player': 0, 'computer': 0 }
loop do
  loop do
    player_choice = determine_player_choice

    # computer's turn
    computer_choice = determine_computer_choice

    clear_screen

    display_choices(player_choice, computer_choice)

    display_results(player_choice, computer_choice)

    enter_to_continue
    clear_screen
   
    winner = get_results(player_choice, computer_choice)

    calculate_match_score(score, winner)
    display_match_results(score)

    grand_winner = score.value?(WINNING_SCORE)
    break if grand_winner
  end
  
  grand_winner = score.key(WINNING_SCORE).to_s.capitalize
  prompt("#{grand_winner} is the grand winner!")
  reset_score(score)
  break unless play_again?
  clear_screen
end

clear_screen

prompt("Thank you for playing. Goodbye!")
