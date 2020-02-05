# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Movie 1")
m2 = Movie.new("Movie 2")
m3 = Movie.new("Movie 3")
m4 = Movie.new("Movie 4")
m5 = Movie.new("Movie 5")
m6 = Movie.new("Movie 6")
m7 = Movie.new("Movie 7")
m8 = Movie.new("Movie 8")
m9 = Movie.new("Movie 9")

v1 = Viewer.new("Viewer 1")
v2 = Viewer.new("Viewer 2")
v3 = Viewer.new("Viewer 3")
v4 = Viewer.new("Viewer 4")
v5 = Viewer.new("Viewer 5")
v6 = Viewer.new("Viewer 6")
v7 = Viewer.new("Viewer 7")

r1 = Review.new(v1,m1,20)
r2 = Review.new(v1,m2,10)
r3 = Review.new(v1,m3,40)

r4 = Review.new(v2,m1,20)
r5 = Review.new(v2,m7,30)

r6 = Review.new(v3,m1,20)
r7 = Review.new(v3,m6,50)
r8 = Review.new(v3,m5,12)

r9 = Review.new(v4,m4,30)
r10 = Review.new(v4,m7,30)
r11 = Review.new(v4,m1,30)
r12 = Review.new(v4,m2,60)

r13 = Review.new(v5,m1,30)
r14 = Review.new(v5,m2,90)

r15 = Review.new(v6,m3,20)
r16 = Review.new(v6,m1,10)
r17 = Review.new(v6,m8,40)

r18 = Review.new(v7,m8,20)
r19 = Review.new(v7,m9,50)
r20 = Review.new(v7,m6,12)
r21 = Review.new(v7,m2,23)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
