class Lesson < ApplicationRecord
    belongs_to :user
    belongs_to :instructor
    belongs_to :location

    def short_dive_time?
        true if self.user.dive_time < self.location.min_dive_time
    end

    def took_dive
        new_dive_time = self.user.dive_time + self.location.dive_length
        self.user.update(:dive_time => new_dive_time)
    end

    def take_dive
        if short_dive_time?
            "Sorry. You do not have enough experience yet for #{self.location.name}"
        else
          took_dive
          "We hope you enjoyed your dive! Please take a second to rate #{self.location.name}"
        end
    end
end
