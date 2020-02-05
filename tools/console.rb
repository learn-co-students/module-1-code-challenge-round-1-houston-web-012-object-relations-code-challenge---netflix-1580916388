# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Aladin")
m2 = Movie.new("Narnia")
m3 = Movie.new("Inception")
m4 = Movie.new("Cars")

v1 = Viewer.new("Blake")
v2 = Viewer.new("Abby")
v3 = Viewer.new("Anna")
v4 = Viewer.new("Grant")

r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m1, 7)
r3 = Review.new(v3, m2, 3)
r4 = Review.new(v1, m2, 4)
r5 = Review.new(v4, m3, 6)
r6 = Review.new(v2, m4, 10)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
