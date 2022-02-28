require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        max = Show.maximum(:rating)
        binding.pry
        Show.where('rating = max')
    end

    def self.lowest_rating
        show = Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.maximum(:rating)
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where('rating > 5')
    end

end