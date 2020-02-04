class Question
  attr_accessor :n, :n1, :n2

  def initialize
    @n = rand(1...4)
    @n1 = rand(99) + 1
    @n2 = rand(99) + 1
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

  def modulus
    puts "What is #{self.n1} % #{self.n2} = ???"
  end

  def add_answer(answer)
    answer == self.n1 + self.n2
  end

  def sub_answer(answer)
    answer == self.n1 - self.n2
  end

  def mul_answer(answer)
    answer == self.n1 * self.n2
  end

  def mod_answer(answer)
    answer == self.n1 % self.n2
  end
  
end

q1 = Question.new
q1.addition
q1.modulus