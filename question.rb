class Question
  attr_accessor :n, :n1, :n2

  def initialize
    @n = rand(1...4)
    @n1 = rand(99) + 1
    @n2 = rand(99) + 1
  end

  def decide_question
    if self.n == 1
      @q = self.addition
      @a = self.n1 + self.n2
      return @q, @a
    elsif self.n == 2
      @q = self.subtraction
      @a = self.n1 - self.n2
      return @q, @a
    elsif self.n == 3
      @q = self.multiplication
      @a = self.n1 * self.n2
      return @q, @a
    elsif self.n == 4
      @q = self.modulus
      @a = self.n1 % self.n2
      return @q, @a
    end
  end

  def addition
    "What is #{self.n1} + #{self.n2} = ???"
  end

  def subtraction
    "What is #{self.n1} - #{self.n2} = ???"
  end

  def multiplication
    "What is #{self.n1} * #{self.n2} = ???"
  end

  def modulus
    "What is #{self.n1} % #{self.n2} = ???"
  end
  
end
