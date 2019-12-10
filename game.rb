class Game
  attr_accessor :name, :lives, :num1, :num2, :current_player
  
  # generate question
  def question(player)
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
  end

  # check if answer is correct, output message, update lives
  def result(player)
    #take input from user, convert into integre
    @answer = gets.chomp.to_i
    
    # check if sum is correct, output the message
    puts @answer == num1 + num2 ? "#{player.name}: Yes! You are  correct.\n" : "#{player.name}: Seriously? No!\n"
    
    # track the lives
    puts @answer == num1 + num2 ? "#{player.id}: #{player.lives}/3" : "#{player.id}: #{player.lose}/3"
  end
end