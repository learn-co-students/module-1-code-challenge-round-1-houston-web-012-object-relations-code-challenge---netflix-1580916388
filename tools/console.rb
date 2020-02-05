# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Lion King")
m2 = Movie.new("Shining")
m3 = Movie.new("King Kong")
m4 = Movie.new("My Fair Lady")

v1 = Viewer.new("Todd")
v2 = Viewer.new("Sarah")
v3 = Viewer.new("Kim")
v4 = Viewer.new("Mike")

r1 = Review.new(m1, v1, 4)
r2 = Review.new(m2, v2, 2)
r3 = Review.new(m3, v3, 2)
r4 = Review.new(m4, v4, 1)

r6 = Review.new(m2, v3, 3)
r7 = Review.new(m1, v4, 5)

puts "All Movies:"
puts Movie.all
puts

puts "All Viewers:"
puts Viewer.all
puts

puts "All Reviews:"
puts Review.all
puts

puts "Reviews for each movie:"
Movie.all.each do |m|
  puts "  Reviews for #{m.title}:"
  puts "    - #{m.reviews}"
  puts
end

puts "Reviewers for each movie:"
Movie.all.each do |m|
  puts "  Reviewers for #{m.title}:"
  puts "    - #{m.reviewers}"
  puts
end

puts "Average rating for each movie:"
Movie.all.each do |m|
  puts "  Average rating for #{m.title}:"
  puts "    - #{m.average_rating}"
  puts
end

puts "Highest rated movie:"
puts "  - #{Movie.highest_rated.title}"
puts

puts "reviews for each viewer:"
Viewer.all.each do |v|
  puts "  Reviews for #{v.username}:"
  puts "    - #{v.reviews}"
  puts
end

puts "Reviewed movies for each viewer:"
Viewer.all.each do |v|
  puts "  Reviewed movies for #{v.username}:"
  puts "    - #{v.reviewed_movies}"
  puts
end

puts "Has viewer reviewed movie?:"
Viewer.all.each do |v|
  puts "  For #{v.username}:"
  v.reviewed_movies.each do |m|
    puts "    Movie: #{m.title}. Reviewed?: #{v.reviewed_movie?(m)}."
    puts
  end  
  puts
end

puts "Create rating for Lion King & My Fair Lady:"
v1.rate_movie(m1, 6)
v1.rate_movie(m4, 8)
puts

puts "**** - Testing Complete! - ****"
puts

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
