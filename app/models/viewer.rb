class Viewer
  attr_reader :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self #@@all 
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies 
    reviews.map{|review| review.movie}
  end

  def reviewed_movies?(movie)
    !!reviewed_movies.find{|viewer_movie| viewer_movie == movie}
  end

  def rate_movie(movie,rating)
    if reviewed_movies.include?(movie)
      reviews.find{|review| review.movie == movie}.rating = rating
    else
      Review.new(self,movie,rating)
    end
  end
end
