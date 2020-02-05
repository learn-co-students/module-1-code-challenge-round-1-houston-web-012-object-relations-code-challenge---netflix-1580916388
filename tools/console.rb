# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("the sun")
movie2 = Movie.new("black")
movie3 = Movie.new("moon")
movie4 = Movie.new("book")
movie5 = Movie.new("love")

viewer1 = Viewer.new("Mike")
viewer2 = Viewer.new("khalil")
viewer3 = Viewer.new("Blake")
viewer4 = Viewer.new("Ali")
viewer5 = Viewer.new("Stephen")

review1 = Review.new(viewer1 , movie1 , 5)
review2 = Review.new(viewer2 , movie3 , 4)
review3 = Review.new(viewer2 , movie5 , 3)
review4 = Review.new(viewer3 , movie2 , 4)
review5 = Review.new(viewer5 , movie2 , 2)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
