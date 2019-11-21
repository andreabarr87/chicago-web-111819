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

  def like_tweet(tweet_to_like)
    Like.new(self, tweet_to_like)
  end

  def likes
    # First, let's find all the likes I've done
    # by looking through all the likes there are
    # and filtering for mine.
    Like.all.select do |like|
      like.user == self
    end
  end


  def liked_tweets
    # then, we'll go through each like and grab the tweet that
    # it belongs to. We'll return the array of those tweets
    self.likes.map do |like|
      like.tweet
    end
  end

  # Now that we have a single source of truth in Tweet.all,
  # we don't need to take in a whole tweet as an argument like we tried yesterday,
  # we just need a string for the tweet's message.
  def post_tweet(message)
    # Create a new tweet with the message that was passed in as the argument
    # The new tweet also needs to initialize with a user instance.
    # How do we find the instance we need to pass in?
    # binding.pry
    Tweet.new(message, self)
  end

end
