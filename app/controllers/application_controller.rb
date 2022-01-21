class ApplicationController < ActionController::Base
    before_action :user_verified
    helper_method :current_user
    helper_method :short_dive_time?
    
  def user_verified
    redirect_to '/' unless user_is_authenticated
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_is_authenticated
    !!current_user   #double bang operator returns boolean value
  end

  def short_dive_time?
    true if current_user.dive_time < @location.min_dive_time
  end

end
