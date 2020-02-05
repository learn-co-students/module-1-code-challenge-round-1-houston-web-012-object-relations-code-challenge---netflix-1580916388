class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    reviews.map { |review| review.movie }.uniq
  end



  def rate_movie(movie, rating)
    if reviewed_movie(movie)
      return_review(movie).rating = rating
    else
      Review.new(self, movie,rating)
    end
  end

  def make_random_review
    rate_movie(Movie.all.sample, rand(1..10))
  end

  def reviewed_movie(movie)
    reviewed_movies.include?(movie)
  end

  def return_review(movie)
    reviews.find{ |review| review.movie == movie}
  end

  def to_s
    @username
  end

  def self.all
    @@all
  end
  
end


