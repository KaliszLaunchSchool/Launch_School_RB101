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

values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
suits = ['hearts', 'diamonds', 'clubs', 'spades']

def initiate_deck(values, suits)
  deck = {}

  for suit in suits
    deck[suit] = values
  end
  deck
end

def deal_cards(deck, suits)
  player_cards = []
  dealer_cards = []
  loop do
    player_cards << one_card(deck, suits)
    dealer_cards << one_card(deck, suits)
    break if dealer_cards.size == 2
  end
  p player_cards
  p dealer_cards
end

def one_card(deck, suits)
  card = {}
  chosen_suit = suits.sample
  chosen_value = deck.fetch(chosen_suit).sample
  card[chosen_suit] = chosen_value
  p card
end

deck = initiate_deck(values, suits)
deal_cards(deck, suits)