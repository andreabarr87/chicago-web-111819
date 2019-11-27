class Movie
  attr_accessor :title

  # def title
  #   @title
  # end
  #
  # def title=(new)
  #   @title = new
  # end

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    # self.reviews.map(&:viewer)

    self.reviews.map do |review|
      review.viewer
    end
  end

  def self.all
    @@all
  end

  def average_rating
    # from all our reviews, let's extract the ratings
    # and also be aware of the length o the array
    # sum all the extracted ratings
    # and divide that sum by the number of reviews
    # ratings = reviews.collect do |review|
    #   review.rating
    # end
    #
    # rating_count = ratings.size
    #
    # ratings.sum / rating_count

    # ------------
    # rating_sum = reviews.reduce(0) do |total, review|
    #   total + review.rating
    # end
    #
    # rating_sum / reviews.size

    # ------------
    reviews.map(&:rating).reduce(:+).to_f / reviews.length
  end

  def self.highest_rated
    self.all.max_by do |movie|
      movie.average_rating
    end
  end

end
