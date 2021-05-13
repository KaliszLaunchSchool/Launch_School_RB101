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
  p player_cards
  p dealer_cards
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
    if card_value == 'ace'
      values << 1
    elsif card_value.class == String
      values << 10
    else
      values << card_value
    end
  end
  p values.sum
end

def calculate_ace(cards)
end

deck = initiate_deck(values, suits)
deal_cards(deck, suits, player_cards, dealer_cards)
p calculate_hand(player_cards)
p calculate_hand(dealer_cards)