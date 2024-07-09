class ApplicationController < ActionController::Base
  helper_method :current_admin

  private

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id]) if session[:admin_id]
  end
  
  def authenticate_admin
    redirect_to new_session_path, notice: "You have to login to open this page" if current_admin.nil? 
  end
  
end
