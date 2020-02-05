# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

v1 = Viewer.new('Dr_watcher')
v2 = Viewer.new('filmer')
v3 = Viewer.new('Sean')
v4 = Viewer.new('Deric')

m1 = Movie.new("Flatiron")
m2 = Movie.new("Flat")

r1 = Review.new(v3, m1, 8)
r2 = Review.new(v4, m2, 2)
r3 = Review.new(v1, m1, 7)
r4 = Review.new(v2, m1, 10)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
