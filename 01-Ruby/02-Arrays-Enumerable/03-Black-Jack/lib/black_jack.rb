def bank_score
  # TODO: Use Random to get a new random score
  rand(16..21)
end

def pick_card
  # TODO: Use Random to get a new random card
  rand(1..11)
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  [bank, score]
end
