class Review

    attr_accessor :rating
    attr_reader :viewer, :movie

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end

    def viewers
        self.viewer
    end

    def movies
        self.movie
    end

end
