class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  #  I will call the viewer that clicked in this class (instance)
  def reviews
    Review.all.select do |review|
      review.viewer == self
    end 
  end
#  first I need to add a new movie to rate from this viewer I am inside this class 
  def adding_a_new_movie (movie)
    Review.new(self , movie )
  end 
# i NEED to rate this movie if there is no rate yer then i need to add the movie rate by initialize the new Review function
  def rate_the_movie(movie, rate)
    reviewd_moview = reviews.find do |reviewed|
      reviewed.movie == movie
    end 
    if !reviewd_moview 
      reviewd_moview = adding_a_moving(movie)
    end
    reviewd_moview.rate = rate
  end
end

#  sumaya please focus between viwer and review 
# Viewer#reviewed_movie?(movie)`
  
# - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise


#   - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
