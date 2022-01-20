class LocationsController < ApplicationController

    def index
        @locations = Location.all
    end

    def show
        @location = Location.find_by(id: params[:id])
        @lesson = @location.lessons.build(user_id: current_user.id, instructor_id: params[:instructor_id])
    end
end