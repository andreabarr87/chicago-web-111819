require_relative "tweet"
require_relative "user"

user = User.new("Son of Coffeedad")
faker = User.new("notacoffeebot91234593147135")

tweet = Tweet.new("coffee#", faker)
new_tweet = Tweet.new("love my coffee", user)



p user.tweets

# p "DELETING USER TWEETS FROM SON OF COFFEEDAD!"
#
# user.clear_tweets
# p user.tweets
#
# p Tweet.all
