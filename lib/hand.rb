require_relative "card.rb" rescue require "card_deck"
class Hand # The player
	attr_accessor :cards # The cards in the hand
	MDHV = 16 # Maximum Dealer Hit Value; If the dealer's hand is valued more than this number, he will stay. 
	def self.deck=(deck) # Set which deck the game is using. Also shuffles the deck.
		@@deck = deck.cards.shuffle
	end
	def self.deck # The deck the game is using
		@@deck
	end
	def bust?; value > 21; end # Returns true if the value is greater than 21.
	def blackjack?; value == 21 && @cards.length == 2; end # Returns true if you have blackjack.
	def initialize; @cards = [@@deck.shift, @@deck.shift]; end
	def view # The view of the cards
		@cards.each {|card| print "#{card.abbr}\t"}
	end
	def hit; @cards.push @@deck.shift; end # Add a card to @cards from @@deck
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
