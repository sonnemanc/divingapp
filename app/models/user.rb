class User < ApplicationRecord
    has_many :lessons
    has_many :instructors, through: :lessons
    has_many :locations, through: :lessons
    has_secure_password

    validates :name, :email, presence: true
    validates :name, :email, uniqueness: true
end
