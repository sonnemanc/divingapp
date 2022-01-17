class Lesson < ApplicationRecord
    belongs_to :user
    belongs_to :instructor
    belongs_to :location
end
