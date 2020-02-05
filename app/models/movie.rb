class Movie
    attr_accessor :title

    @@all = []

    def initialize(title)
      @title = title
      self.class.all << self
    end

    def self.all
      @@all
    end

    def reviews
      Review.all.select{|review|review.movie == self}
    end

    def reviewers
      reviews.map{|review|review.viewer}.uniq
    end
    def average_rating
      total = 0
      reviews.sum{|review|total += review.rating}
      avg = total/ reviews.count
    end

    def self.highest_rating
      self.all.max_by{|rating| rating.average_rating}
    end

end
