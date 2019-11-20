class User
  attr_reader :username
  attr_accessor :tweets


  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user.username == self.username
    end
  end

  # Now that we have a single source of truth in Tweet.all,
  # we don't need to take in a whole tweet as an argument,
  # just a string for the tweet's message.
  def post_tweet(message)
    # Whichever instance of user is currently running this instance method,
    # add them to the tweet as we create it, using the `self` keyword.
    Tweet.new(message, self)
    # Now that the tweet is created, the next time this user calls #tweets,
    # that new tweet will be found within Tweet.all.
  end

end
