require_relative 'contract.rb'
require_relative 'game_station.rb'
require_relative 'utilities/screen.rb'

Screen::clear
game_station = GameStation.new
msg = nil

loop do
  Screen::clear
  puts "#{msg}" unless msg.nil?
  begin
    game_station.change_game
  rescue StandardError => error
    msg = "Ошибка: #{error}"
  end
end
