class User < ApplicationRecord
    has_many :lessons
    has_many :instructors, through: :lessons
    has_many :locations, through: :lessons
    has_secure_password
end
