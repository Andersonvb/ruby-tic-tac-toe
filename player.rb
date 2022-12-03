class Player

  @@character = "X"

  def initialize
      @character = @@character
      @@character = "O"
    end

  def character
    @character
  end

  def show_id
    puts @id
  end

end