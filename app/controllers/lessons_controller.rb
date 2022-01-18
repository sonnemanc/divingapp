class LessonsController < ApplicationController

    def create
        @lesson = Lesson.create(lesson_params)
        message = @lesson.take_dive
        redirect_to user_path(@lesson.user), flash: {message: message}
    end

end