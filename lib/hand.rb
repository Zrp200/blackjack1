require_relative "card.rb"
class Hand # The player
	attr_accessor :cards
	def self.deck=(deck) # Set which deck the game is using
		@@deck = deck
	end
	def self.deck # The deck the game is using
		@@deck
	end
	def initialize; @cards = [@@deck.cards.shift, @@deck.cards.shift]; end
	def value # The value of the cards in @cards
		v, aces = 0, 0
		for card in @cards
			v += card.value
			aces += 1 if card.num == "Ace"
		end
		while v > 21 && aces > 0
			v -= 10
			aces -= 1
		end
		return v
	end
end
