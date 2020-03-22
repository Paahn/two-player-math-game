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
        puts "#{self.player.name}'s answer was....#{@ans}!"
      else
        @ans = false
        self.player.wrong
        puts "#{self.player.name}'s answer was....#{@ans}!"
        puts "#{self.player.name} now has #{self.player.life} life/lives left."
      end

    
  end

end
