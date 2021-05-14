=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

require 'pry'

values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
suits = ['hearts', 'diamonds', 'clubs', 'spades']
player_cards = []
dealer_cards = []

def initiate_deck(values, suits)
  deck = {}

  for suit in suits
    deck[suit] = values
  end
  deck
end

def deal_cards(deck, suits, player_cards, dealer_cards)
  loop do
    player_cards << deal_one_card(deck, suits)
    dealer_cards << deal_one_card(deck, suits)
    break if dealer_cards.size == 2
  end
  player_cards
  dealer_cards
end

def deal_one_card(deck, suits)
  card = {}
  chosen_suit = suits.sample
  chosen_value = deck.fetch(chosen_suit).sample
  card[chosen_suit] = chosen_value
  
  deck[chosen_suit].delete_if {|value| value == chosen_value}
  card
end

def calculate_hand(cards)
  values = []
  cards.each do |card|
    card_value = card.values[0]
    unless card_value == 'ace' 
      if card_value.class == String
      values << 10
      else
        values << card_value
      end
    end
    if card_value == 'ace'
      values << calculate_ace(cards, values, card_value)
    end
  end
  values.sum
end

def calculate_ace(cards, values, card_value)
  if card_value = 11 && values.sum > 21
    card_value = 1
  else
    card_value = 11
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

def player_turn(player_cards, dealer_cards, deck, suits)
  display_player_cards(player_cards)
  prompt("The dealer shows:")
  prompt("  The #{dealer_cards[0].values[0]} of #{dealer_cards[0].keys[0]}")

  loop do
    break if hit_or_stay == 'stay'
    player_cards << deal_one_card(deck, suits)
    display_player_cards(player_cards)
    if bust?(player_cards) 
      prompt('Bust!') 
      break
    end
  end
  player_cards
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
  elsif hit_or_stay_response ==  's'
    hit_or_stay_response = 'stay'
  else
    hit_or_stay_response
  end
end

def display_player_cards(player_cards)
  count = 0
  prompt("Your cards are:") 
  loop do
    prompt("  The #{player_cards[count].values[0]} of #{player_cards[count].keys[0]}")
    count +=1
    break if player_cards.size == count
  end
  prompt("Calculates to #{calculate_hand(player_cards)} points")
end

def bust?(cards)
  if calculate_hand(cards) > 21
    true
  end
end

def determine_winner(player_cards, dealer_cards)
  prompt("You bust! The dealer wins.") if bust?(player_cards)
end

deck = initiate_deck(values, suits)
deal_cards(deck, suits, player_cards, dealer_cards)
calculate_hand(dealer_cards)
player_turn(player_cards, dealer_cards, deck, suits)
determine_winner(player_cards, dealer_cards)