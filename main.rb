require './player'
require './turn'


  
puts "Enter name for Player 1: "
player_1 = gets.chomp
puts "Enter name for Player 2: "
player_2 = gets.chomp

player_1 = Player.new(player_1)
player_2 = Player.new(player_2)

current_turn_order = 2

while player_1.life != 0 && player_2.life != 0 do
current_player = (current_turn_order % 2 == 0) ? player_1 : player_2
play_this_turn = Turn.new(current_player)
play_this_turn.current_turn
current_turn_order += 1
end
  
if (player_1.life == 0)
  puts "#{player_2.name} wins with a score of #{player_2.life}/3."
elsif (player_2.life == 0)
  puts "#{player_1.name} wins with a score of #{player_1.life}/3."
end
puts "Thank you for playing."
