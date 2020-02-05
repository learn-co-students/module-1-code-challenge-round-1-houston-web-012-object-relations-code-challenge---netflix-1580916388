# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Star Wars")
m2 = Movie.new("The Avengers")
m3 = Movie.new("Indiana Jones")
m4 = Movie.new("The Notebook")

v1 = Viewer.new("SappyGirl")
v2 = Viewer.new("JediMaster")
v3 = Viewer.new("StrongestAvenger")
v4 = Viewer.new("No Hat Left Behind")

r1 = Review.new(v1, m1, 7)
r2 = Review.new(v2, m1, 10)
r3 = Review.new(v3, m2, 10)
r4 = Review.new(v1, m4, 8)
r5 = Review.new(v4, m3, 10)
r6 = Review.new(v1, m3, 5)
r7 = Review.new(v2, m4, 4)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
