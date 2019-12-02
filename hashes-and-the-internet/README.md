# Hashes and the Internet

### Define

* GET requests
* Server responses
* Developer console
* APIs
* JSON (string formatted as a hash/object)

### Deliverables

* Write an application that takes a search term from a user
* Make a Request to the GoogleBooks API and get back some results
  * https://www.googleapis.com/books/v1/volumes?q=ruby+programming
* Display the titles, author names, and description for each book found



### Outline

Remember hashketball?

```
def get_players
  # game_hash.values.map do |team_info|
  #   team_info[:players]
  # end.flatten
  game_hash[:home][:players] + game_hash[:away][:players]
end
```

Why did we bother to Array#map when we could have just added the two teams?

What do we know about Ruby?

* Methods
* Return Values
* Data Structures
* Classes / OO

What is missing?

















DATA.








And how do we get it?




























______________ ______________     _______  ______________________ ._._._.
\__    ___/   |   \_   _____/     \      \ \_   _____/\__    ___/ | | | |
  |    | /    ~    \    __)_      /   |   \ |    __)_   |    |    | | | |
  |    | \    Y    /        \    /    |    \|        \  |    |     \|\|\|
  |____|  \___|_  /_______  /    \____|__  /_______  /  |____|     ______
                \/        \/             \/        \/              \/\/\/


Let's talk about how the Internet works.
And how to make it work for us.

GET requests:
* What you're sending when you type a url into a browser and hit enter.
* Basically you send a header hash and a body hash
* These contain instructions for the kind of route you're going to, what you want to do there, what type of data you're expecting in response, etc.

Server responses:
* What you see in the browser *right after* you type a url and hit enter.
* Also have a head and a body
* Body is usually parsed and displayed in a browser client

Developer console:
* Lets us look into details of requests and responses sent/received
* Tools to inspect elements in the browser
* Ability to edit displayed HTML/CSS on the fly
* Later, when we have more JS, a runnable JS console to test things out

APIs:
* "Application Programming Interface"
* i.e. "Something useful to a programmer if you can use it right"
* Interface: usable part of the tool, requires specific knowledge of what functionality is available and what syntax is used to access it
* Implementation: everything that happens "behind the scenes" or "under the hood", which the end user is (ideally) oblivious to
* Documentation is your best friend!


JSON (string formatted as a hash/object):
* A string, formatted as a hash object
* Like USB, but for data.

Ruby Gems:
* Packages that do useful stuff
* Each one is its own API!
* Yep, docs still crucial


Let's try some stuff out in app.rb!
