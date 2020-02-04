class Player
  attr_accessor :name, :life

  def initialize(n)
    @name = n
    @life = 3
  end

  def wrong
    @life -= 1
  end
  
end
