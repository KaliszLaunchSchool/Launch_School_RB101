VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
SUITS = ['hearts', 'diamonds', 'clubs', 'spades']
CRITICAL_VALUE = 21
DEALER_HIT_POINT = 17
WINNING_ROUNDS = 2
deck = {}
player_cards = []
dealer_cards = []

def welcome
  prompt("Welcome to the Twenty-One game!")
  prompt("Try to get as close to #{CRITICAL_VALUE} as possible, without going over.")
  prompt("If you go over #{CRITICAL_VALUE}, it's a 'bust' and you lose.")
  enter_to_continue
  prompt("Face cards are 10 points, and aces are either 1 point or 11.")
  prompt("You go first! Ready?")
  enter_to_continue
end

def initiate_deck(deck)
  SUITS.each do |suit|
    deck[suit] = VALUES.dup
  end
  deck
end

def deal_cards(deck, player_cards, dealer_cards)
  loop do
    player_cards << deal_one_card(deck)
    dealer_cards << deal_one_card(deck)
    break if dealer_cards.size == 2
  end
  deck
end

def deal_one_card(deck)
  card = {}
  chosen_suit = SUITS.sample
  chosen_value = deck.fetch(chosen_suit).sample
  card[chosen_suit] = chosen_value
  deck[chosen_suit].delete(chosen_value)
  card
end

def calculate_hand(cards)
  values = []
  cards.each do |card|
    card_value = card.values[0]
    unless card_value == 'ace'
      values << if card_value.class == String
                  10
                else
                  card_value
                end
    end
    if card_value == 'ace'
      values << calculate_ace(values)
    end
  end
  values.sum
end

def calculate_ace(values)
  if (values.sum + 11) > CRITICAL_VALUE
    1
  else
    11
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

def player_turn(player_cards, dealer_cards, deck)
  prompt("You have:")
  display_cards(player_cards)
  enter_to_continue
  display_dealer_first_card(dealer_cards)

  loop do
    break if hit_or_stay == 'stay'
    player_cards << deal_one_card(deck)
    prompt("You have:")
    display_cards(player_cards)
    if bust?(player_cards)
      prompt('Bust!')
      break
    end
  end
  player_cards
end

def display_dealer_first_card(dealer_cards)
  prompt("The dealer shows:")
  puts "    The #{dealer_cards[0].values[0]} of #{dealer_cards[0].keys[0]}"
end

def hit_or_stay
  prompt("Would you like to hit, or stay?")
  hit_or_stay_response = ''
  loop do
    abbreviations = ['hit', 'h', 'stay', 's']
    hit_or_stay_response = gets.chomp.downcase
    break if abbreviations.include?(hit_or_stay_response)
    prompt('Please enter a valid response: hit/h or stay/s')
  end
  if hit_or_stay_response == 'h'
    hit_or_stay_response = 'hit'
  elsif hit_or_stay_response == 's'
    hit_or_stay_response = 'stay'
  else
    hit_or_stay_response
  end
end

def display_cards(cards)
  count = 0
  loop do
    puts "     The #{cards[count].values[0]} of #{cards[count].keys[0]}"
    count += 1
    break if cards.size == count
  end
  puts "     (#{calculate_hand(cards)} points)"
end

def bust?(cards)
  if calculate_hand(cards) > CRITICAL_VALUE
    true
  end
end

def dealer_turn(dealer_cards, deck)
  dealer_score = calculate_hand(dealer_cards)

  loop do
    if bust?(dealer_cards)
      break
    elsif dealer_score >= DEALER_HIT_POINT
      prompt("The dealer stays.")
      break
    else
      prompt("The dealer hits!")
      dealer_cards << deal_one_card(deck)
      dealer_score = calculate_hand(dealer_cards)
    end
    enter_to_continue
  end
end

def determine_winner(player_cards, dealer_cards, deck)
  if bust?(player_cards)
    enter_to_continue
    prompt("You bust! The dealer wins.")
  else
    dealer_turn(dealer_cards, deck)
    if bust?(dealer_cards)
      prompt("The dealer bust! You win!")
    else
      compare_scores(player_cards, dealer_cards)
    end
  end
end

def compare_scores(player_cards, dealer_cards)
  if calculate_hand(player_cards) > calculate_hand(dealer_cards)
    prompt("Congrats! You win!")
  elsif calculate_hand(player_cards) < calculate_hand(dealer_cards)
    prompt("Sorry, dealer wins!")
  elsif calculate_hand(player_cards) == calculate_hand(dealer_cards)
    prompt("It's a tie!")
  end
end

def winner(player_cards, dealer_cards, deck)
  if bust?(player_cards)
    "Dealer"
  else
    #dealer_turn(dealer_cards, deck)
    if bust?(dealer_cards)
      "Player"
    else
      compare_scores_for_winner(player_cards, dealer_cards)
    end
  end
end

def compare_scores_for_winner(player_cards, dealer_cards)
  if calculate_hand(player_cards) > calculate_hand(dealer_cards)
    "Player"
  elsif calculate_hand(player_cards) < calculate_hand(dealer_cards)
    "Dealer"
  elsif calculate_hand(player_cards) == calculate_hand(dealer_cards)
    nil
  end
end

def show_dealer_hand(dealer_cards)
  prompt("Dealer's hand: ")
  prompt("The dealer had #{calculate_hand(dealer_cards)} points.")
end

def display_final_cards(player_cards, dealer_cards)
  prompt("You had:")
  display_cards(player_cards)
  prompt("The dealer had:")
  display_cards(dealer_cards)
end

def enter_to_continue
  prompt('Press enter to continue')
  STDIN.gets
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

def reset_deck(deck, player_cards, dealer_cards)
  deck.replace({})
  player_cards.replace([])
  dealer_cards.replace([])
end

def update_scoreboard(player_cards, dealer_cards, scoreboard, deck)
  result = winner(player_cards, dealer_cards, deck)

  scoreboard[result.to_sym] += 1 unless result.nil?
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

def display_match_winner(score)
  score.select do |player, value|
    if value == WINNING_ROUNDS
      prompt "#{player} wins the game!"
    end
  end
end

def reset_score(scoreboard)
  scoreboard.replace({ "Player": 0, "Computer": 0 })
end

system 'clear'
welcome
loop do
  scoreboard = { "Player": 0, "Dealer": 0 }
  loop do
    system 'clear'
    initiate_deck(deck)
    deal_cards(deck, player_cards, dealer_cards)
    calculate_hand(dealer_cards)
    player_turn(player_cards, dealer_cards, deck)
    determine_winner(player_cards, dealer_cards, deck)
    enter_to_continue
    display_final_cards(player_cards, dealer_cards)
    enter_to_continue
    system 'clear'
    update_scoreboard(player_cards, dealer_cards, scoreboard, deck)
    display_round_score(scoreboard)
    break if match_over?(scoreboard)
    enter_to_continue_next_round
    reset_deck(deck, player_cards, dealer_cards)
  end
  display_match_winner(scoreboard)
  reset_deck(deck, player_cards, dealer_cards)
  reset_score(scoreboard)
  break unless play_again?
end

prompt("Thanks for playing Twenty-One! Goodbye.")
