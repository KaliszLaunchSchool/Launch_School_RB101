values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
suits = ['hearts', 'diamonds', 'clubs', 'spades']
player_cards = []
dealer_cards = []
deck = {}


def initiate_deck(deck, values, suits)
  for suit in suits
    deck[suit] = values.dup
  end
  deck
end

def deal_one_card(deck, suits)
  card = {}
  chosen_suit = suits.sample
  chosen_value = deck.fetch(chosen_suit).sample
  card[chosen_suit] = chosen_value
  p card_suit = card.keys[0]
  p card_value = card.values[0]

  deck.map do |k, v|
    if k == card_suit
      v.delete(card_value)
    end
  end
  p deck
end

initiate_deck(deck, values, suits)
deal_one_card(deck, suits)