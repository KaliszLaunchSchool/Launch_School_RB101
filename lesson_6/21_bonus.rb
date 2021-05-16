require 'pry'
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
CRITICAL_VALUE = 21
DEALER_HIT_POINT = 17
WINNING_ROUNDS = 2

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > CRITICAL_VALUE
  end

  sum
end

def busted?(cards)
  total(cards) > CRITICAL_VALUE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > CRITICAL_VALUE
    :player_busted
  elsif dealer_total > CRITICAL_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt("Would you like to play again?")
  play_again = ''

  loop do
    play_again = gets.chomp.downcase
    break if ['y', 'yes', 'n', 'no'].include?(play_again)
    prompt('Please enter valid answer (y/yes or n/no)')
  end

  ['y', 'yes'].include?(play_again)
end

def display_match_results(dealer_cards, player_cards, dealer_total,
                          player_total)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="
end

def update_scoreboard(dealer_cards, player_cards, scoreboard)
  result = detect_result(dealer_cards, player_cards)

  result =  case result
            when :player_busted
              :Dealer
            when :dealer_busted
              :Player
            when :player
              :Player
            when :dealer
              :Dealer
            when :tie
              nil
            end

  scoreboard[result] += 1 unless result.nil?
end

def display_round_score(scoreboard)
  prompt("Current score")
  prompt("  Player: #{scoreboard['Player'.to_sym]}")
  prompt("  Dealer: #{scoreboard['Dealer'.to_sym]}")
end

def match_over?(score)
  score.value?(WINNING_ROUNDS)
end

def enter_to_continue
  prompt('Press enter to continue')
  STDIN.gets
end

def enter_to_continue_next_round
  prompt('Press enter to continue to the next round')
  STDIN.gets
end

def all_results(dealer_cards, player_cards, scoreboard)
  enter_to_continue
  system 'clear'
  update_scoreboard(dealer_cards, player_cards, scoreboard)
  display_round_score(scoreboard)
  if match_over?(scoreboard)
    enter_to_continue
    system 'clear'
    true
  else
    enter_to_continue_next_round
    system 'clear'
    false
  end
end

def display_match_winner(score)
  score.select do |player, value|
    if value == WINNING_ROUNDS
      prompt "#{player} wins the game!"
    end
  end
end

loop do
  prompt "Welcome to Twenty-One!"
  prompt "The first player to win #{WINNING_ROUNDS} games, wins!"

  scoreboard = { Player: 0, Dealer: 0 }
  loop do
    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    player_total = total(player_cards)
    dealer_total = total(dealer_cards)

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, " \
           "for a total of #{player_total}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        prompt "Your total is now: #{player_total = total(player_cards)}"
      end

      break if player_turn == 's' || busted?(player_cards)
    end

    if busted?(player_cards)
      display_match_results(dealer_cards, player_cards, dealer_total,
                            player_total)
      display_result(dealer_cards, player_cards)
      all_results(dealer_cards, player_cards, scoreboard) ? break : next
    else
      prompt "You stayed at #{player_total}"
    end

    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if dealer_total >= DEALER_HIT_POINT

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_total = total(dealer_cards)}"
    end

    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_cards}"
      display_match_results(dealer_cards, player_cards, dealer_total,
                            player_total)
      display_result(dealer_cards, player_cards)
      all_results(dealer_cards, player_cards, scoreboard) ? break : next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards!
    display_match_results(dealer_cards, player_cards, dealer_total,
                          player_total)

    break if all_results(dealer_cards, player_cards, scoreboard)
  end
  display_match_winner(scoreboard)
  break unless play_again?
end

system 'clear'
prompt "Thank you for playing Twenty-One! Good bye!"
