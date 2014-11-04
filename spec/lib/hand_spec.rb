require "hand"; require "card"
Hand.deck = CardDeck::Deck.new
RSpec.describe Hand do
  describe ".deck" do
    subject {Hand.deck}
    it {is_expected.to be_an_instance_of CardDeck::Deck}
  end
  describe "#new" do
    h = Hand.new
    subject {h}
    describe "value" do
      context "when @cards == [#{CardDeck.Card 'Ace', 'spades'}, #{CardDeck.Card 10, 'spades'}, #{CardDeck.Card 10, 'diamonds'}]" do
        hand = Hand.new
        hand.cards = [CardDeck.Card('Ace', 'spades'), CardDeck.Card(10, 'spades'), CardDeck.Card(10, 'diamonds')]
        subject {hand.value}
        it {is_expected.to eq 21}
      end
    end
  end
end
