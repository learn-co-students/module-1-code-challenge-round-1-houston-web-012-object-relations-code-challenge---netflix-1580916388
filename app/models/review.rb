class Review 
    @@all = []
    attr_accessor :viewer , :movie , :rate
    def initialize(viewer , movie , rate = nil)
        @viewer = viewer
        @movie = movie 
        @rate = rate  
        @@all << self
    end
    def self.all
        @@all
    end

end
