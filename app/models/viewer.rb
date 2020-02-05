class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select {|rev| rev.viewer == self}
  end

  def reviewed_movies
    reviews.map {|rev| rev.movie}
  end

  def reviewed_movie? (target_movie)
    reviewed_movies.include? target_movie
  end

  def find_review (movie)
    reviews.find {|rev| rev.movie == movie}
  end

  def rate_movie (movie, rating)
    if reviewed_movie?(movie)
      find_review(movie).rating = rating
    else 
      Review.new(self, movie, rating)
    end
  end
  
end






