class Game
  attr_accessor :name, :lives, :num1, :num2, :current_player
  
  def current_player
    @player1 = Player.new("Player1")
    
  end

  # generate question
  def question
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    puts "#{current_player.name}: What does #{num1} plus #{num2} equal?"
  end

  # check if answer is correct, output message, update lives
  def result
    #take input from user, convert into integre
    @answer = gets.chomp.to_i
    # check if sum is correct, output the message
    puts @answer == num1 + num2 ? "#{current_player.name}: Yes! You are  correct.\n" : "#{current_player.name}: Seriously? No!\n"
    # calculate the lives
    puts @answer == num1 + num2 ? "P1: #{current_player.lives}/3" : "P1: #{current_player.lives - 1}/3 "
  end
end