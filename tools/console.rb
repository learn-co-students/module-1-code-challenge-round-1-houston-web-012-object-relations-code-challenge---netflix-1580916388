# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

m1 = Movie.new("Lilo and Stitch")
m2 = Movie.new("V for Vendetta")
m3 = Movie.new("Seven Pounds")

v1 = Viewer.new("luv_movies")
v2 = Viewer.new("buttered_popcorn")
v3 = Viewer.new("imdb_chump")



r1 = Review.new(v1, m1, 5)
r2 = Review.new(v1, m2, 4)
r3 = Review.new(v1, m3, 3)

r4 = Review.new(v2, m2, 5)

r4 = Review.new(v3, m3, 1)
cdcdc = Review.new(v3, m2, 1)
cdfgvt = Review.new(v3, m1, 1)




binding.pry
0
