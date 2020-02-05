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
    reviews.map{|review| review.viewer}.uniq
  end

  def average_rating
    total_rating = reviews.sum{|review| review.rating}
    average = total_rating.to_f/reviews.count
    average
  end

  def avgrating
    reviews.sum{|review| review.rating}.to_f/reviews.count
  end

  def self.highest_rated
    all.max_by{|movie| movie.average_rating}
  end

end
