class Player
  attr_reader :name, :clan
  # def name
  #   @name
  # end

  def initialize(name, clan)
    @name = name
    @clan = clan
  end

  def initiate_match_with(player)
    # Need to create a match for "these two" players
    # One player is provided by arg,
    # And whichever player is calling THIS METHOD RIGHT NOW (self)
    # is the other one.
    Match.new(self, player)
  end

  def same_as_player?(player_two)
    self == player_two
  end

  def initiated_matches
    Match.all.select do |match|
      same_as_player?(match.initiator)
    end
  end

  def accepted_matches
    Match.all.select do |match|
      same_as_player?(match.acceptor)
    end
  end

  def matches
    initiated_matches + accepted_matches
  end

  def won_matches
    Match.all.select do |match|
      same_as_player?(match.winner)
    end
  end

  def opponents
    binding.pry
    # see all my opponents that I have been in matches with
    # first get all Matches
    self.matches.map do |match|
      if match.acceptor == self
        opp = match.initiator
      elsif match.initiator == self
        opp = match.acceptor
      end
      opp
    end
  end
end
