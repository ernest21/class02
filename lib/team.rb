require_relative 'player.rb'
class Team
  attr_reader :team_name

  def initialize(name)
    @team_name = name
    @players = []
  end

  def remove_player(name)
    @players.delete_if {|player| player.name == name}
  end

  def filter_by_position(position)
    # returns players in the given position
    @players.select {|player| player.position == position }
  end

  def add_player(name, position)
    @players.push(Player.new(name,position))
  end

  def to_s
    puts team_name
    @players.each {|player | puts player}
  end
end