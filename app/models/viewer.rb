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
    Review.all.select { |r| r.viewer == self }
  end

  def reviewed_movies
    reviews.map { |r| r.movie }
  end

  def reviewed_movie?(movie)
    reviewed_movies.include? (movie)  
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      puts "Movie already reviewed. Changing rating."
      found_movie = reviews.find { |r| r.movie }
      found_movie.rating = rating
    else
      puts "Movie not reviewed. Creating a new one."
      Review.new(movie, self, rating)
    end
  end  

end
