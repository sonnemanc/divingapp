class Location < ApplicationRecord
    has_many :lessons
    has_many :users, through: :lessons
    has_many :instructors, through: :lessons
    serialize :ratings,Array

    def mean_rating
        self.ratings.sum(0.0) / self.ratings.size
    end
end
