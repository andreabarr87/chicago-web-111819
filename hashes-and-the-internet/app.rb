require 'rest-client'
require 'json'
require 'pry'


# programming_books = hash_from_get_request(gets.chomp)

# programming_books















# MY APP CODE BELOW


def slugify(string)
  string.split.join("+")
end

def hash_from_get_request(term)
  # PSEUDOCODE:
  # binding.pry
  base_url = "https://www.googleapis.com/books/v1/volumes?q="
  search_url = base_url + slugify(term)
  # Make a get request to the provided url
  response = RestClient.get(search_url)
  # Take the response from the get request and return it as a hash
  JSON.parse(response)
end

def welcome
  puts "Welcome to the BookSearcher"
  puts "Please enter a term:"
end

def get_user_input
  gets.chomp
end

def run
  welcome
  search_term = get_user_input
  p "Searching for #{search_term}..."
  books = hash_from_get_request(search_term)
  print_books_info(books)
  # binding.pry
  # TODO: Get results! And show them!
end

def print_books_info(books_hash)
  # books_hash["items"][0]["volumeInfo"]["description"]

  books_hash["items"].each do |book|
    p book["volumeInfo"]["title"]
    p print_authors(book["volumeInfo"]["authors"])
    p book["volumeInfo"]["description"]
  end

end

def print_authors(authors)
  if authors && authors.class == Array
    authors.each do |author|
      p author
    end
  else
    ""
  end
end

run
