# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("21 jump street")
m2 = Movie.new("Bad Boys for life")
m3 = Movie.new("The Gentlemen")

v1 = Viewer.new("Gian")
v2 = Viewer.new("Renzo")
v3 = Viewer.new("Chris")


r1 = Review.new(v1,m1,9)
r2 = Review.new(v1,m2,10)
r3 = Review.new(v1,m3,6)

r4 = Review.new(v2,m1,9)
r5 = Review.new(v2,m2,10)
r6 = Review.new(v2,m3,5)


r7 = Review.new(v3,m1,8)
r8 = Review.new(v3,m2,10)
r9 = Review.new(v3,m1,9)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
