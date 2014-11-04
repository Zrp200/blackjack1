require_relative "card.rb" rescue require "card_deck"
class Hand # The player
	attr_accessor :cards
	def self.deck=(deck) # Set which deck the game is using. Also shuffles the deck.
		@@deck = deck.cards.shuffle
	end
	def self.deck # The deck the game is using
		@@deck
	end
	def initialize; @cards = [@@deck.shift, @@deck.shift]; end
	def hit; @cards.push @@deck.shift; end
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
