# One to Many Relationships

## Objectives

* As we work, review OO basics from yesterday
  * Defining classes
  * Creating new class instances using def initialize
  * Using attr_reader / attr_accessor to work with an instance's variables
  * Using class variable and methods for info and behavior that's "bigger" or more "meta" than one instance should handle
* Implement one object to many objects relationship
  * One object has many objects
  * One object belongs to another object
* Practice passing custom objects as arguments to methods
* Demonstrate single source of truth
* Infer type of method (class or instance) through naming conventions

## Deliverables

* Create a User class. The class should have these methods:
  * `#initialize` which takes a username and have
  * a reader method for the username
  * `#tweets` that returns an array of Tweet instances
  * `#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
  * `Tweet#username` that returns the username of the tweet's user


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

Many to Many (to be continued! we'll learn this next!)
  A customer can visit many restaurants, and a restaurant can be visited by many customers
