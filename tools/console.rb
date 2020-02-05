# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Victor")
v2 = Viewer.new("Angela")
v3 = Viewer.new("Eddie V")
v4 = Viewer.new("Count Chocula")
v5 = Viewer.new("Bernie Sanders")
v6 = Viewer.new("C-3P0")

m1 = Movie.new("The Godfather I")
m2 = Movie.new("The Godfather II")
m3 = Movie.new("Paul Blart Mall Cop")
m4 = Movie.new("Zoolander")
m5 = Movie.new("Gladiator")
m6 = Movie.new("Catwoman")

r1 = Review.new(v1, m1, 9.0)
r2 = Review.new(v1, m2, 10.0)
r3 = Review.new(v2, m1, 10.0)
r4 = Review.new(v2, m4, 8.0)
r5 = Review.new(v3, m3, 5.0)
r6 = Review.new(v4, m2, 10.0)
r7 = Review.new(v5, m6, 1.0)
r8 = Review.new(v6, m5, 9.0)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
