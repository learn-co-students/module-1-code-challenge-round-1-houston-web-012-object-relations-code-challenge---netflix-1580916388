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
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map{|review| review.viewer}
  end

  def sum_rating
    reviews.sum{|sum = 0, x| sum += x.rating}
  end

  def average_rating
    (sum_rating / reviews.count).to_f
  end

  def self.highest_rated
    max = Review.all.max_by{|review| review.rating}
    return max.movie
  end

end
