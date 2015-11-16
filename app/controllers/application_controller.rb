class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:index]
  skip_before_action :authenticate_user, only: [:index]
  
  helper_method :current_user


  def index
  	redirect_to playlists_path if current_user
  end

  private

  def current_user
  	@_current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user!
  	puts "Authenticating..."
  	redirect_to :root unless current_user
  end

end
