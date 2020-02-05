class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map { |review| review.viewer }.uniq
  end

  def average_rating
    (reviews.sum { |sum = 0.0, review| sum += review.rating } / reviews.length).round(1)
  end

  def to_s
    @title
  end

  def self.highest_rated
    @@all.max_by { |movie| movie.average_rating }
  end


  def self.all
    @@all
  end

end


