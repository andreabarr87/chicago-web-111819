require 'pry'
class Tweet
  attr_reader :message, :user
  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    # To return this tweet's user's username, we just go through those exact steps, in that order, in Ruby!
    self.user.username
  end
end
