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
	
