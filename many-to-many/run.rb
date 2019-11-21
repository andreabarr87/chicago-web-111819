require_relative "tweet"
require_relative "user"
require_relative "like"

# Vocab term: "Seed data". The following lines are "seeding" our app with the info we need to verify that it functions.

dad_jr = User.new("Son of Coffeedad")
mama = User.new("Matcha Mama")

coffee_tweet= dad_jr.post_tweet("coffee#")
matcha_tweet_one = mama.post_tweet("mmm! mmm! mmmmmmatcha!")
pain_tweet = dad_jr.post_tweet("Papa taught me everything. Except how to learn.")
matcha_tweet_two = mama.post_tweet("Monday Matcha-vation: When you fill your neighbor's cup, your cup fills up too!")

dad_jr.like_tweet(matcha_tweet_two)
dad_jr.like_tweet(matcha_tweet_one)

p dad_jr.liked_tweets

all_likes = Like.all
# binding.pry
# Vocab term: "Driver code". The following code is intended to be run after the basic info is seeded, to verify that the code works as intended.

all_tweets = Tweet.all # Expecting to see an array of four Tweets
mom_tweets = mama.tweets # Expecting to see an array of two Tweets with user dad_jr
matcha_tweet_username = matcha_tweet_two.username # Expecting "Matcha Mama"

# binding.pry
