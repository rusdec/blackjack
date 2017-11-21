require_relative 'human.rb'
require_relative 'computer.rb'
require_relative 'deck.rb'

class GameTable
  attr_reader :players, :bank, :points_to_win, :deck, :value_bet

  def initialize(players, deck)
    cards_start_count = 2

    @players = players
    @deck = deck
    @points_to_win = 21

    give_out_cards(cards_start_count)

    @value_bet = 10    
    @bank = 0
  end

  def bank_to_player(player)
    player.bank += bank
    self.bank = 0
  end

  def bet_to_bank(player)
    player.bank -= value_bet
    self.bank += value_bet
  end

  def give_out_card(player)
    #player.take_card(deck) - лучше
    player.add_card(deck)
  end

  private
  
  def give_out_cards(n)
    players.each do |player|
      n.times do |_|
        give_out_card(player)
      end
    end    
  end
end
