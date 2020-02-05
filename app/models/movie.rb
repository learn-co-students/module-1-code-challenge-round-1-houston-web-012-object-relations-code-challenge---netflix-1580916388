class Movie

  attr_accessor :title, :reviews, :reviewers

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |r| r.movie == self } 
  end  

  def reviewers
    reviews.map { |r| r.viewer }
  end

  def average_rating
    reviews.inject(0) { |sum, r| sum + r.rating } / reviews.size
  end

  def self.highest_rated
    @@all.max_by { |m| m.average_rating }
  end

end
