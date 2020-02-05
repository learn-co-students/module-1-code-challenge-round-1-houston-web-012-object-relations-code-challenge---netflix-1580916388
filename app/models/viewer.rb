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
    Review.all.select {|review| review.viewer == self} 
  end

  def reviewed_movies
    reviews.map {|review| review.movie}.uniq #  uniq wouldnt really be necessary for this scenario... 
  end

  def reviewed_movie?(movie)
    reviews.map do |review|
      if review.movie.title == movie 
        return true
      else
        return false
      end
    end
  end

  def rate_movie(rate, movie)
    reviews.each do |review|
      if review.include?(movie) # doesn't work... 
         review.rating = rate 
      else
        Review.new(self, movie, rate)
      end
    end
  end
  
end
