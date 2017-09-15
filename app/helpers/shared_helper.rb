module SharedHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !current_user.nil?
  end

  def authenticate_user!
    if !user_signed_in?
      flash[:error] = "Unauthorized. Login first carechimba."
      redirect_to new_session_path
    end
  end


end
