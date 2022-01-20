class UsersController < ApplicationController
    skip_before_action :user_verified, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        if @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @lessons = @user.lessons
    end

    def index
        @users = User.all
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :dive_time, :password_confirmation)
    end
end