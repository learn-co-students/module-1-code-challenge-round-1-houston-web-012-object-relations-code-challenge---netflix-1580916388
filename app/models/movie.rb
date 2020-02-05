class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end



  def reviews
    Review.all.select {|m| m.movie == self}
  end

  def reviewers
    reviews.map {|r| r.viewer}
  end 

  def average_rating
    reviews.sum {|a| a.rating} / reviews.size
  end

  def self.highest_rated
    self.all.find {|m| m.reviews.max_by}
  end

  

  

end
