
nail_height = 20
#####################################################################
def player_one_hit
  nail = nail_height
  score_player_one = 0

  while asking_to_hit(player_one)
    score_player_one += player_one
    state_of_the_game(score_player_one, score_player_two)
  end
end

def player_two_hit
  nail = nail_height
  score_player_two =0

  while asking_to_hit(player_two)
    score_player_two += player_two
    state_of_the_game(score_player_two, score_player_one)
  end
end

####################################################################
def state_of_the_game(score_player_one, score_player_two)
  "score_player_one is #{score}, score_player_two #{score}!"
end
######################################################################


#################################
def player_one
  rand(0..20)
end
#################################
def player_two
  rand(0..20)
end
#################################