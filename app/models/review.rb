class Review
    attr_accessor :movie, :viewer, :rating

    @@all = []

    def initialize (viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all 
    end

end



