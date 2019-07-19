class Card
  CARD_SUITS = [
    :hearts,
    :spades,
    :diamonds,
    :clubs
  ]

  CARD_VALUES = {
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14
  }

  def self.card_suits 
    CARD_SUITS
  end

  def self.card_values 
    CARD_VALUES.values 
  end

  attr_reader :suit, :value 

  def initialize(suit, value)
    @suit, @value = suit, value
  end

end
