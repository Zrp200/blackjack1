require "spec_helper"
Hand.deck = CardDeck::Deck.new
RSpec.describe Hand do
  describe "::MDHV" do
    subject {Hand::MDHV}
    it {is_expected.to eq 16}
  end
  describe ".deck" do
    subject {Hand.deck}
    it {is_expected.to be_an_instance_of Array}
  end
  describe "#new" do
    describe "blackjack?"
    describe "bust?"
    describe "hit" do
      s = Hand.new
      subject {s.cards}
      s.hit
      its(:length) {is_expected.to eq 3}
    end
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
