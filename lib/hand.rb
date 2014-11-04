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
		v = 0
		for card in @cards
			unless card.num == "Ace"
				v += card.value
			else
				if v + 11 > 21 then v += card.value[0]
				else
					v += card.value[1]
				end
			end
		end
		return v
	end
end
