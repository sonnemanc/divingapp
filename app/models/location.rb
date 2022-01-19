class Location < ApplicationRecord
    has_many :lessons
    has_many :users, through: :lessons
    has_many :instructors, through: :lessons
    serialize :ratings,Array

    def mean_rating
        mean = self.ratings.sum(0.0) / self.ratings.size
        mean.round(1)
    end
end
