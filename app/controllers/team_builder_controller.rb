class TeamBuilderController < ApplicationController
  def start
    @players = Player.all
  end

  def generate
    players = Player.all
    @list = players.sample(28).sort!.reverse!
    @team_four = []
    @team_three = []
    @team_two = []
    @team_one = []
    @team_one << @list.pop
    @team_two << @list.pop
    @team_three << @list.pop
    @team_four << @list.pop
    @team_four << @list.pop
    @team_three << @list.pop
    @team_two << @list.pop
    @team_one << @list.pop
    @team_one << @list.pop
    @team_two << @list.pop
    @team_three << @list.pop
    @team_four << @list.pop
    @team_four << @list.pop
    @team_three << @list.pop
    @team_two << @list.pop
    @team_one << @list.pop
    @team_one << @list.pop
    @team_two << @list.pop
    @team_three << @list.pop
    @team_four << @list.pop
    @team_four << @list.pop
    @team_three << @list.pop
    @team_two << @list.pop
    @team_one << @list.pop
    @team_one << @list.pop
    @team_two << @list.pop
    @team_three << @list.pop
    @team_four << @list.pop

    @four_total = 0
    @team_four.each do |player|
      @four_total += player.war
    end
    @three_total = 0
    @team_three.each do |player|
      @three_total += player.war
    end
    @two_total = 0
    @team_two.each do |player|
      @two_total += player.war
    end
    @one_total = 0
    @team_one.each do |player|
      @one_total += player.war
    end
  end
end
