require "blackjack"
Hand.deck = CardDeck::Deck.new
def card(num, suit)
  suit = case suit.downcase
    when "diamonds" then CardDeck::Card::DIAMONDS
    when "spades" then CardDeck::Card::SPADES
  end
  return CardDeck::Card.new num, suit
end
RSpec.describe Hand do
  describe ".deck" do
    subject {Hand.deck}
    it {is_expected.to be_an_instance_of CardDeck::Deck}
  end
  describe "#new" do
    h = Hand.new
    subject {h}
    describe "value" do
      context "when @cards == [#{card 'Ace', spades}, #{card 10, spades}, #{card 10, diamonds}]" do
        hand = Hand.new
        hand.cards = [card('Ace', spades), card(10, spades), card(10, diamonds)]
        subject {hand.value}
        it {is_expected.to eq 21}
      end
    end
  end
end
