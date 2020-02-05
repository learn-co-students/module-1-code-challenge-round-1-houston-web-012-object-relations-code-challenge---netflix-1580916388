class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|v| v.viewer == self}
  end

  def reviewed_movies
    reviews.map {|v| v.movie}
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end





  
end
