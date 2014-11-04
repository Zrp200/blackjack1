require "card_deck"
class CardDeck::Card
	def value # The points a card is worth
		case num
			when 2..10 then num.to_i
			when "Ace" then [1, 11]
			when "Jack" then 10
			when "Queen" then 10
			when "King" then 10
		end
	end
end
class Hand # The player
	attr_accessor :cards
	def self.deck=(deck) # Set which deck the game is using
		@@deck = deck
	end
	def self.deck # The deck the game is using
		@@deck
	end
	def initialize; @cards = [@@deck.shift, @@deck.shift]; end
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
	
