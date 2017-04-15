class Admin::SessionsController < Admin::BaseController
  def new
  end

  def create
    user = ::Admin::User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:admin_user] = user.id
      redirect_to admin_menu_sections_path
    else
      flash[:notice] = 'Your username and password is incorrect'
      render :new
    end
  end

  def destroy
    session[:admin_user] = nil
    redirect_to new_admin_session_path
  end
end
