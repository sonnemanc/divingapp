class LessonsController < ApplicationController

    def new
        @lesson = Lesson.new
    end

    def create
        @lesson = Lesson.create(lesson_params)
        message = @lesson.take_dive
        redirect_to user_path(@lesson.user), flash: {message: message}
    end

    def lesson_params
        params.require(:lesson).permit(:location_id, :user_id, :instructor_id)
    end
end