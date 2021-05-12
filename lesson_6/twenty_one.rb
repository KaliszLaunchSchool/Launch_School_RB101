values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
suits = ['hearts', 'diamonds', 'clubs', 'spades']

def initiate_deck(values, suits)
  deck = {}

  for suit in suits
    deck[suit] = values
  end
  deck
end

initiate_deck(values, suits)