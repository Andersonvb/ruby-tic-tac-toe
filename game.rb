class Game

  def initialize
    @game = Array.new(9, " ")
    @checked_positions = Array.new
    @finished = false
  end

  def check_position(position, player_character)
    if !@checked_positions.include?(position)
      @game[position] = player_character
      @checked_positions.push(position)
      return true
    else
      return false
    end 
  end 

  def show_game
    puts " #{@game[0]} || #{@game[1]} || #{@game[2]}"
    puts "===||===||==="
    puts " #{@game[3]} || #{@game[4]} || #{@game[5]}"
    puts "===||===||==="
    puts " #{@game[6]} || #{@game[7]} || #{@game[8]}"
  end

  def check_win
    if @game[0] == @game[1] and @game[1] == @game[2] and @game[0] != " "
      win(@game[0])
      return true
    elsif @game[3] == @game[4] and @game[4] == @game[5] and @game[3] != " "
      win(@game[3])
      return true
    elsif @game[6] == @game[7] and @game[7] == @game[8] and @game[6] != " "
      win(@game[6])
      return true
    elsif @game[0] == @game[3] and @game[3] == @game[6] and @game[0] != " "
      win(@game[0])
      return true
    elsif @game[1] == @game[4] and @game[4] == @game[7] and @game[1] != " "
      win(@game[1])
      return true
    elsif @game[2] == @game[5] and @game[5] == @game[8] and @game[2] != " "
      win(@game[2])
      return true
    elsif @game[0] == @game[4] and @game[4] == @game[8] and @game[0] != " "
      win(@game[0])
      return true
    elsif @game[2] == @game[4] and @game[4] == @game[6] and @game[2] != " "
      win(@game[2])
      return true
    end
  end

  def win(character)
    @finished = true
    puts "You win! #{character}"
  end

  def finished
    @finished
  end 
end