VALID_CHOICES = { "rock" => 'r', 
                    "paper" => 'p', 
                    "scissors" => 's', 
                    "spock" => 'sp', 
                    "lizard" => 'l'
                }

GAME_RULES = {  'scissors' => ['paper', 'lizard'],
                  'paper' => ['rock', 'spock'],
                  'rock' => ['lizard', 'scissors'],
                  'lizard' => ['spock', 'paper'],
                  'spock' => ['scissors', 'rock']
                }

def prompt(message)
  Kernel.puts("=> #{message}")
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

loop do
  # player's turn
  player_choice = ''
  loop do
    
    prompt("Choose one: ")
    VALID_CHOICES.each do |word, shorthand|
      puts "   #{word} (#{shorthand})"
    end
    
    player_choice = Kernel.gets().chomp().downcase
    
    if VALID_CHOICES.include?(player_choice)
      break
    elsif VALID_CHOICES.values.include?(player_choice)
      player_choice = VALID_CHOICES.key(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  # computer's turn
  computer_choice = VALID_CHOICES.keys.sample

  Kernel.puts("You chose: #{player_choice}; Computer chose: #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
