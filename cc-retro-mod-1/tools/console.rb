# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matrix = Movie.new("The Matrix")
link = Movie.new("Waking Life")
p matrix.title
matrix.title = "The Bad Third Matrix"
p matrix.title

duke = Viewer.new("Duke")
p duke.username
duke.username = "Stalwart Patton the Brave"
p duke.username

libby = Viewer.new("Libby")
lib_rev = Review.new(libby, matrix, 7)


review_link = Review.new(duke, link, 11)
p Review.all
test_movies = libby.reviewed_movies
p matrix.reviewers

libby.rate_movie(link, 9)
lib_rev = libby.reviews
libby.rate_movie(link, 6)
review = Review.new(duke, matrix, 9)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
