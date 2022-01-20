class UsersController < ApplicationController
    skip_before_action :user_verified, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
      @user = User.new(user_params)
        if @user.save
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
        params.require(:user).permit(:name, :password, :email, :dive_time, :password_confirmation)
    end
end