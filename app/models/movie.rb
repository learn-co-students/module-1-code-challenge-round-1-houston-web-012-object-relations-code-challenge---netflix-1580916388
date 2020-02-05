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
    Review.all.select {|rev| rev.movie == self}
  end

  def viewers
    reviews.map {|rev| rev.viewer}
  end

  def average_rating
    sum_ratings = reviews.sum{|rev| rev.rating}.to_f
    total_ratings = reviews.count.to_f
    avg_rating = (sum_ratings / total_ratings).round(2)
  end

  def self.highest_rated
    self.all.max_by {|mov| mov.average_rating} 
  end

end





