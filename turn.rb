require './question'
require './player'

class Turn
  attr_accessor :question, :player

  def initialize(player)
    @question = Question.new
    @player = player
  end

  def current_turn

      puts "-----------NEW TURN-----------"
      print "#{self.question.decide_question[0]}"
      puts ""
      print "#{self.player.name}:  "
      player_answer = gets.chomp

      if player_answer == self.question.decide_question[1].to_s
        @ans = true
      else
        @ans = false
        self.player.wrong
        puts "#{self.player.name} now has #{self.player.life} life/lives left."
      end

      puts "#{self.player.name}'s answer was....#{@ans}!"
    
  end

end

# t1 = Turn.new("William")
# puts t1.current_turn