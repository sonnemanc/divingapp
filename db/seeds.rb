# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.delete_all
User.delete_all
Location.delete_all
Instructor.delete_all

Toby  = Instructor.create(name: "Toby Morrison")
Alex = Instructor.create(name: "Alex Maccelli")
Quintan   = Instructor.create(name: "Quintan Smith")

locations = {
    "Tim Bobs Diving Pool" => {
        :min_dive_time => 0,
        :dive_length => 1,
        :ratings => [5, 3, 4, 3]
    },
    "Tranquil Lagoon" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 4, 4, 3]
    },
    "Manta Ray Night Dive" => {
        :min_dive_time => 3,
        :dive_length => 2,
        :ratings => [5, 5, 4, 5]
    },
    "Turtle Town" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 3, 4, 5, 2]
    },
    "Minnow Beach" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 3, 5, 3]
    },
    "Big Tuna Rocks" => {
        :min_dive_time => 3,
        :dive_length => 2,
        :ratings => [5, 3, 4, 3, 2, 5]
    },
    "Spider Crab Heights" => {
        :min_dive_time => 3,
        :dive_length => 1,
        :ratings => [5, 3, 4, 3, 4]
    },
    "Shark Cove" => {
        :min_dive_time => 3,
        :dive_length => 1,
        :ratings => [5, 5, 4, 5]
    }
}

locations.each do |name, location_hash|
    l = Location.new
    l.name = name
    location_hash.each do |attribute, value|
        l[attribute] = value
    end
    l.save
end
