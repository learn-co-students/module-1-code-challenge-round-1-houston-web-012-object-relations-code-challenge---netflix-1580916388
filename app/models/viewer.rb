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
    Review.all.select{|review| review.viewer == self}
  end

  # Secret Message Enclosed for v1
  def reviewed_movies
    reviews.map{|review| review.movie}.uniq
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.find do |review| 
        review.movie == movie
      end.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  def self.king_couch_potato
    puts "#{all.max_by{|spud| spud.reviews.count}.username} is the king couch potato!"
  end



  
end
