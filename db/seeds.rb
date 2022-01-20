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
        :ratings => [5, 3, 4, 3],
        :description => "A full description will go here",
        :pic_url => "https://imgur.com/gallery/9bXZvgP"
    },
    "Tranquil Lagoon" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 4, 4, 3],
        :description => "A full description.",
        :pic_url => "./assets/images/pexels-symeon-ekizoglou-2105785.jpg"
    },
    "Manta Ray Night Dive" => {
        :min_dive_time => 3,
        :dive_length => 2,
        :ratings => [5, 5, 4, 5],
        :description => "",
        :pic_url => "https://i.imgur.com/g195shG.jpeg"
    },
    "Turtle Town" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 3, 4, 5, 2],
        :description => "",
        :pic_url => "/assets/images/Turtle-Town.jpg"
    },
    "Minnow Beach" => {
        :min_dive_time => 1,
        :dive_length => 1,
        :ratings => [5, 3, 5, 3],
        :description => "",
        :pic_url => "https://i.imgur.com/e4qkPy5.jpeg"
    },
    "Big Tuna Rocks" => {
        :min_dive_time => 3,
        :dive_length => 2,
        :ratings => [5, 3, 4, 3, 2, 5],
        :description => "",
        :pic_url => "app/assets/images/Home_page.jpg"
    },
    "Spider Crab Heights" => {
        :min_dive_time => 3,
        :dive_length => 1,
        :ratings => [5, 3, 4, 3, 4],
        :description => "",
        :pic_url => "app/assets/images/clown_fish.jpg"
    },
    "Shark Cove" => {
        :min_dive_time => 3,
        :dive_length => 1,
        :ratings => [5, 5, 4, 5],
        :description => "",
        :pic_url => "app/assets/images/Blue_water.jpg"
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
