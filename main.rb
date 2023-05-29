require "./Player.rb"
require "./GameState.rb"
require "./Question.rb"




player_1 = Player.new("player_1")
player_2 = Player.new("player_2")
game = GameState.new(player_1, player_2)



while player_1.lives > 0 && player_2.lives > 0
question = Question.new
player= game.turn
puts player.name
  puts "#{player.name}: What does #{question.first_number} plus #{question.second_number} equal?"
  print "> "

  response = choice = $stdin.gets.chomp

  if response.to_i != question.solution.to_i
    player.lose_life()
    puts "Wrong! The correct answer was #{question.solution}. lose a life."
  else 
    puts "that's right!"
  end

  puts "P1: #{player_1.lives}/3 vs P2 #{player_2.lives}/3" 
  
  game.turn_transition()
    

end

