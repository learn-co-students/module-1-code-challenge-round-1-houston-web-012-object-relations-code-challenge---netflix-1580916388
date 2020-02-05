class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|x| x.movie == self}
  end

  def reviewers
    reviews.map{|x| x.viewer}
  end

  def average_rating
    (reviews.sum{|x| x.rating}.to_f) / reviewers.count
  end

  def self.highest_rated
    
  end
end