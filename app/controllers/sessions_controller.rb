class SessionsController < ApplicationController
    skip_before_action :user_verified, only: [:login, :create]
  


    def login

    end

    def create
      user = User.find_by_name(params[:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user
      else
        flash[:errors] = ["Invalid Username or Password"]
        redirect_to login_path
      end
    end

    def gitlogin
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
      end
      session[:user_id] = @user.id
      redirect_to @user
    end

    def logout
      session.clear
      redirect_to new_user_path
    end

    private

    def auth
      request.env['omniauth.auth']
    end
  
end