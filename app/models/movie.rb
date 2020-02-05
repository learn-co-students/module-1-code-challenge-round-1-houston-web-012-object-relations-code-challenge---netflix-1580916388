class Movie
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map{|review| review.viewer}
  end

  def average_rating 
    reviews.sum {|movie| movie.rating}.to_f / reviews.length
  end

  def self.highest_rated
    all.max_by{|movie| movie.average_rating}
  end

end
