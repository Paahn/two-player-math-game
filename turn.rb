require './question'
require './player'

class Turn
  attr_accessor :question, :player

  def initialize(player)
    @question = Question.new
    @player = player
  end

  def current_turn
    until @player.life == 0
      puts "-----------NEW TURN-----------"
      print "#{self.player}: #{self.question.decide_question[1]} "
      player_answer = gets.chomp

      if player_answer == self.question.decide_question[1].to_s
        @ans = true
      else
        @ans = false
        self.player.wrong
        puts "#{self.player} now has #{self.player.life} life/lives left."
      end

      puts "#{self.player}'s answer was....#{@ans}!"
    end
  end

end

# t1 = Turn.new("William")
# puts t1.current_turn