require "spec_helper"
include CardDeck
RSpec.describe Card do
  describe "value" do
    context "when num == 2..10" do
      s = Card.new rand(2..10)
      subject {s.value}
      it {is_expected.to eq s.num}
    end
    for num in ["Jack", "Queen", "King"]
      context "when num" do
        subject {Card.new(num).value}
        it {is_expected.to eq 10}
      end
    end
    context "when num == \"Ace\"" do
      subject {Card("Ace").value}
      it {is_expected.to eq 11}
    end
  end
end
