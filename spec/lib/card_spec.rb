require "blackjack"
include CardDeck
RSpec.describe Card do
  describe "value" do
    context "when num == 2..10" do
      s = Card.new rand(2..10)
      subject {s.value}
      it {is_expected.to eq s.num}
    end
    context "when num == \"Jack\", \"Queen\", or \"King\"" do
      subject {Card.new(%w(Jack Queen King).sample).value}
      it {is_expected.to eq 10}
    end
    context "when num == \"Ace\"" do
      subject {Card.new("Ace").value}
      it {is_expected.to include 1}
      it {is_expected.to include 11}
    end
  end
end
