# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


v1 = Viewer.new("Paul")
v2 = Viewer.new("Stephen")
v3 = Viewer.new("Gian")

m1 = Movie.new("Pulp Fiction")
m2 = Movie.new("Django Unchained")
m3 = Movie.new("Jackie Brown")

r1 = Review.new(v1, m1, 8)
r2 = Review.new(v2, m2, 7)
r3 = Review.new(v3, m3, 9)
r4 = Review.new(v3, m1, 5)
r5 = Review.new(v2, m3, 8)
r6 = Review.new(v1, m2, 6)
r7 = Review.new(v1, m3, 2)
r8 = Review.new(v2, m1, 4)
r9 = Review.new(v3, m2, 3)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
