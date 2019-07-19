require "card"

RSpec.describe Card do

  describe "Card#card_suits" do
    it "should return the four suits in the deck in an array" do
      expect(Card.card_suits).to eq([ :hearts, :spades, :diamonds, :clubs ])
    end
  end

  describe "Card#card_values" do
    it "should return the possible values in the deck in an array" do
      expect(Card.card_values).to eq((2..14).to_a)
    end
  end

  describe "Card#initialize" do
    it "should create a new card instance with a given suit and value" do
      expect(Card.new(:spades, :ace).suit).to eq(:spades)
      expect(Card.new(:spades, :ace).value).to eq(:ace)
    end
  end
  
end