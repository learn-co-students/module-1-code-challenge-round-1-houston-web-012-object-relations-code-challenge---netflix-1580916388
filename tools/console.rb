# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

v1 = Viewer.new("Stephen")
v2 = Viewer.new("Paul")
v3 = Viewer.new("Caleb")

m1 = Movie.new("This")
m2 = Movie.new("Hi")
m3 = Movie.new("My")
m4 = Movie.new("Go Cardinals!")
m5 = Movie.new("Is")
m6 = Movie.new("Message")
m7 = Movie.new("Reader")
m8 = Movie.new("Secret")

r1 = Review.new(v1, m2, 1)
r2 = Review.new(v2, m1, 2)
r3 = Review.new(v1, m7, 3)
r4 = Review.new(v3, m7, 4)
r5 = Review.new(v1, m1, 5)
r6 = Review.new(v1, m5, 1)
r7 = Review.new(v2, m2, 2)
r8 = Review.new(v1, m3, 3)
r9 = Review.new(v3, m8, 4)
r10 = Review.new(v1, m8, 5)
r11 = Review.new(v1, m6, 1)
r12 = Review.new(v3, m4, 2)
r13 = Review.new(v2, m3, 3)
r14 = Review.new(v1, m4, 4)
r15 = Review.new(v2, m8, 5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
