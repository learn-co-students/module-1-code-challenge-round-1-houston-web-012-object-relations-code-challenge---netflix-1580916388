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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}.uniq # uniq wouldnt really be necessary for this scenario... 
  end

  def average_rating
    reviews.sum {|review| review.rating} / reviews.count
  end

  def self.highest_rated
    # @@all.each do |movie|
    #   movie.reviews if review.rating.max
    #   return movie 
    # end # doesn't work 
    # @@all.select {|movie| movie.reviews if review.rating.max} #doesn't work

    @@all.select {|movie| movie.reviews}

  end

end
