# Keeps track of the game state
class GameState
  attr_reader :turn
  def initialize(player_1, player_2)
   @player_1 = player_1
   @player_2 = player_2
   @turn = player_1

  end
def turn_transition()
  puts "-----New Turn ------"  
  if @turn.eql? @player_2 
     @turn = @player_1 
  else
    @turn = @player_2
  end
end
end
