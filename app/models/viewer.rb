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
    Review.all.select {|rev| rev.viewer == self}
  end

  def reviewed_movies
    reviews.map {|rev| rev.movie}
  end

  def reviewed_movie? (target_movie)
    reviewed_movies.include? target_movie
  end

  def find_review (movie)
    reviews.find {|rev| rev.movie == movie}
  end

  def rate_movie (movie, rating)
    if reviewed_movie?(movie)
      find_review(movie).rating = rating
    else 
      Review.new(self, movie, rating)
    end
  end

  # def self.most_active
  #   max_reviews = self.all.max_by {|viewer| viewer.reviews.count}.reviews.count
  #   # if max reviews are 3, v1 and v2 both have 3 reviews this will still only return the first v1
  #   most_active_arr = self.all.select {|viewer| viewer.reviews.count == max_reviews}
  #   if most_active_arr.count > 1
  #     puts "#{most_active_arr.join(" ")} are tied!!"
  #     # change to call a name not an object
  #   else
  #     most_active_arr[0]
  #   end
  # end
  
end






