require_relative "hand.rb'
def compare_score(p1, p2, args=Hash.new(false)) # Determines who wins. parameter p1 is the player and parameter p2 is the dealer.
  unless args[:compare]
    win, lose, tie = "You win!", "Dealer wins.", "Tie"
  else
    win, lose, tie = true, false, nil
  end
  if p1.bust? and p2.bust? then return tie
  elsif p2.bust? then return win
  elsif p1.bust? then return lose
  elsif p1.value > p2.value then return win
  elsif p2.value > p1.value then return lose
  else
    return tie
  end
end
