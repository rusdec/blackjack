class Player
  attr_reader :bank, :name, :cards

  def initialize(name, dealer = false)
    @name = name
    @bank = 100
  end

  def add_card
    #добавить карту в руку
  end

  def pass
    #пропустить ход
  end
 
  def dealer?
    return dealer
  end
 
  protected
  
  attr_reader :dealer

  def place_bet
    #сделать ставку
  end
end