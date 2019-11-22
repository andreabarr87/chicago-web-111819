require_relative "player"
require_relative "match"

require "pry"

# Need to make some players, maybe make four for a real tournament
ty = Player.new("tyler1", "reformedlords")
ninja = Player.new("ninja", "sellout squad")
jf = Player.new("jesse", "go off kings")

# p ty.name == "tyler1"
# p ninja.clan == "sellout squad"
# Need to make matches that pit players against each other
match_one = ty.initiate_match_with(ninja)
match_two = jf.initiate_match_with(ninja)
match_three = jf.initiate_match_with(ty)

# p match_one.acceptor == ninja

# Need a method to declare winner of a match
match_one.declare_winner(ninja)
# binding.pry
# p match_one.winner == ninja

puts match_one.summary

p ninja.won_matches

p ty.opponents
