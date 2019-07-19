require 'deck'

# populate the deck
# Deck instance will hold an attribute with an array of 52 elements (card instances)
# deal cards to Players, 5 each
# keep track of "trashed"/folded cards
# instead of 'shuffling' the deck we will draw etc. by .sample

RSpec.describe Deck do
  # describe "Deck#initialize" do
  #   it "should call #populate_deck" do
  #     subject(:deck) { Deck.new }
  #     expect(@deck).to receive(:populate_deck)
  #   end
  # end

  describe "Deck#populate" do
    it "should return an array of 52 new cards" do
      expect(Deck.new.cards.length).to eq(52)
    end
  end


end