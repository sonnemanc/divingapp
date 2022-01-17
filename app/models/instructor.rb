class Instructor < ApplicationRecord
    has_many :lessons
    has_many :users, through: :lessons
    has_many :locations, through: :lessons
end
