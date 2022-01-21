class LessonsController < ApplicationController

    def create
        @lesson = Lesson.create(lesson_params)
        message = @lesson.take_dive
        redirect_to user_path(@lesson.user), flash: {message: message}
    end

    private

    def set_lesson
    end

    def set_location
    end

    def lesson_params
        params.require(:lesson).permit(:location_id, :user_id, :instructor_id)
    end

end