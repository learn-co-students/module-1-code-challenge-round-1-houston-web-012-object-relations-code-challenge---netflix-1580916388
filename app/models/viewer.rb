class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|x| x.viewer == self}
  end

  def reviewed_movies
    reviews.map{|x| x.movie}
  end

 
end

