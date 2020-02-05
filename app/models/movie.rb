class Movie
  attr_accessor :title

  @@all = []
  def initialize(title)
    @title = title
    self.class.all << self
  end
  def self.all
    @@all
  end
  def movies
    Review.all.select do |review|
      review.movie == self
    end
  end 
  def reviews
    movies.map do |movie|
    movie.viewer 
    end 
  end 
  def average_rating
    total = 0
    movies.map do |movie|
      total += movie.rate
    end 
    if movies.count == 0 
      0
    else 
    total / movies.count 
    end 
  end 
  def self.highest_rated
    self.all.max do |a,b|
      a.average_rating <=> b.average_rating
    end 
  end 
end

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
