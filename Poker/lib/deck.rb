require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = Array.new
    self.populate_deck
  end

  def populate_deck
    Card.card_suits.each do |suit|
      Card.card_values.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end
end
