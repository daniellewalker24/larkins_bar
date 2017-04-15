class Admin::BaseController < ApplicationController
  layout 'admin'

  helper_method def current_user
    @current_user ||= ::Admin::User.find(session[:admin_user]) if session[:admin_user].present?
    redirect_to new_admin_session_path if session[:admin_user].blank? || @current_user.blank?
  end
end
