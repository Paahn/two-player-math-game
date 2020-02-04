class Question
  attr_accessor :n, :n1, :n2

  def initialize
    @n = rand(1...4)
    @n1 = rand(10)
    @n2 = rand(10)
  end

  def addition
    puts "What is #{self.n1} + #{self.n2} = ???"
  end

  def subtraction
    puts "What is #{self.n1} - #{self.n2} = ???"
  end

  def multiplication
    puts "What is #{self.n1} * #{self.n2} = ???"
  end

  def division
    puts "What is #{self.n1} / #{self.n2} = ???"
  end

end

q1 = Question.new
q1.addition
q1.division