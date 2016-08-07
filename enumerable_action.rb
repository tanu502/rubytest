require_relative 'ModulePlayer'
require_relative 'ModuleTeam'

player1 = ModulePlayer.new("Bob",13,33)
player2 = ModulePlayer.new("Mike",34,65)
player3 = ModulePlayer.new("Jim",15,15)
player4 = ModulePlayer.new("Joe",16,22)
player5 = ModulePlayer.new("Scott",37,35)

red_team = ModuleTeam.new("Red")

red_team.add_players(player1,player2,player3,player4,player5)


elig_player = red_team.select{ | player | (14..20) === player.age}
						.reject{ | player | player.skill_level < 45}

puts elig_player