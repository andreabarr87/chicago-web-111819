# Many to Many Relationships

Based off of yesterday's code, we're going to add the ability to like a tweet. We describe this specific relationship between users and tweets as a many to many relationship. Meaning that a user can like many tweets and a tweet can be liked by many users!

> **Note:** This is a separate relationship from the one to many that we built before. That relationship could be called "posted tweets" whereas this relationship should be called "liked tweets". When we're done, a User will be related to a Tweet in multiple ways!

## The world so far

* Create a User class. The class should have these methods:
  * `#initialize` which takes a username and have
  * a reader method for the username
  * `#tweets` that returns an array of Tweet instances
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.

## New Deliverables

* User class
  * `#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
  * `#like_tweet` that accepts as a tweet instance as a parameter
  * `#liked_tweets` that returns a collection of all the tweets this user has liked
* Tweet class
  * `Tweet#username` that returns the username of the tweet's user
  * `#likers` that returns a collection of all the Users who have liked this tweet


# Glossary

* "Model Domain" - What are the objects needed to represent our app's "world", and how are they related?

* "One to Many" - A relationship where one type of object "A" is associated with many of another type of object "B"; taken the other way, each instance of "B" is associated with exactly one "A"
  * A dog owner has many dogs; a dog belongs to one Owner
  * A city has many residents; a resident resides in one city
  * A guitar has many strings...
  * A recipe has many ingredients...

* "self" - a special keyword in Ruby that acts as a "mirror" to the context it's called in. Therefore, you can call self in different places in the same app and get different return values!
  * called outside a class or method => returns `main`
  * called inside a class or a class method => returns the ClassName
  * called inside a class instance => returns #<ClassInstance:0x000343...@etc="...">

* "Single Source of Truth" (SSoT) - When we need to store information, we want to store it in only one place.
  * In today's example, a User *could* keep track of the tweets it posts by holding them in an array @tweets on each user instance.
  * ...but that would violate SSoT, since the Tweet class is already storing copies of those same tweets in Tweet's @@all array.
  * ...and that would mean having to delete tweets from TWO places every time you need to delete a tweet. Better to just maintain one array, and keep it on the class closest to the problem space - the Tweet class creates tweets, so it should speak for which tweets were created.

* "Many to Many" - A relationship where object "A" can have many of object "B" and "B" can ALSO have many of "A". The single source of truth about this relationship is stored
on a third object type which "JOINS" "A" and "B" together by referring to one of each.
  * A User can like many Tweets. A Tweet can be liked by many Users. Tweets and Users are JOINED by Likes, each of which keeps track of the User that clicked Like and the Tweet that was Liked.
  * A Musician can play many Songs. A Song can be played by many Musicians. Songs and Musicians are JOINED by Performances, each of which knows about one musician who was playing and one song that was played.
  * A Book can have many Authors. An Author can have many books. They're JOINED by Contributions. Each `Contribution.new` instance has an instance variable for an `@author` and another for a `@book`.

* "JOIN"  - The single source of truth that is required to efficiently model a many to many relationship.
  * Say you go to CVS, you buy gum, you get a receipt. The receipt is a join between you and that pharmacy. (Customer has many Pharmacies and Pharmacies have many customers, through the join Transaction) It's got that one pharmacy's name and the last 4 of your card number. There's not an array of customers or a list of competing pharmacies on that receipt! Each JOIN can be thought of as a "receipt" of the moment that two members of a many-to-many came together.
  * _Couldn't I just have an array of Liked Tweets on each User and another array of Likers on each Tweet?_ Well, sure you could! If, that is, you don't mind managing both of them whenever that like button gets clicked. Hope you don't accidentally leave one out and let a user think they supported their friend with 0 likes showing up on their end! :wink: SINGLE SOURCE OF TRUTH is what we want, so we keep iit simple and stick to the join.
  * _But it's not simple to me!_ Not yet! It's a new way to think about stuff. But it's a really structured and dependable way, and therefore it's reusable. Once this workflow clicks, you'll have no trouble using it wherever you spot this type of relationship. And that will let you focus on the more important work of making that relationship feel *special* as you express things about it in your specific code. We're trying to solve user-level problems, not reinvent data modeling wheels. And the join wheel is safe to roll with.
