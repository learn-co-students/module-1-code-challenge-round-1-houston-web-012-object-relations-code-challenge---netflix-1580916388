# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#some helpful constant & functions

FIRST = "Kymberly Susana Dannie Annmarie Damian Benton Milagro Twanda Germaine Kristan".split(" ")
LAST  = "Brigance Dubuc Rankin Worm Marbury Brite Vanderhorst Goodwill Sok Colberg".split(" ")
NOUN = "Airbus Brilliant Consul Contour Howard Meaning Mixer Summary Taxi Technology".split(" ")
ADJ = "important demonic vagabond lowly needy overjoyed numberless inner whole deserted".split(" ")

def rand_name 
  "#{FIRST.sample} #{LAST.sample}"
end

def rand_title
  "#{ADJ.sample.capitalize} #{NOUN.sample}"
end

# creating objects for testing

10.times do 
  Movie.new(rand_title)
end

50.times do
  Viewer.new(rand_name)
end

1000.times do
  Viewer.all.sample.make_random_review
end

#check basics

random = Review.all.sample
puts "#{random.viewer} made a review for #{random.movie} with rating of #{random.rating}"

random = Movie.all.sample
puts "#{random.title} reviewers are:"
random.reviewers.each { |viewer|
  puts "#{viewer.username}"
}


random = Viewer.all.sample
puts "#{random.username} review following movies:"
random.reviewed_movies.each { |movie|
  puts "#{movie.title}"
}

#and_ bonus

Movie.all.each { |movie|
  puts "#{movie} has rating of #{movie.average_rating}"
}

puts "Highest rating is #{Movie.highest_rated}, it has rated #{Movie.highest_rated.reviews.length} times, and average is #{Movie.highest_rated.average_rating}"

viewer = Viewer.all.sample
movie = Movie.all.sample
puts "There was a gossip that #{viewer} has rated the #{movie}. Later it is confirmed that it is #{viewer.reviewed_movie(movie)}"

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
# 0
