require 'pry'
class Tweet
  attr_reader :message, :user
  @@all = []

  def initialize(message, user)
    # binding.pry
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    # Return the name of the user who posted this tweet
    self.user.username
  end
end
