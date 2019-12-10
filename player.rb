class Player
  attr_accessor :id, :name, :lives

  def initialize(id, name, lives) 
    @id = id
    @name = name
    @lives = lives
  end

  def lose
    @lives = @lives - 1
  end
end