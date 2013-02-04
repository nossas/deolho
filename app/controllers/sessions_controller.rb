class SessionsController < ApplicationController
  def create
    @current_user = User.find_or_create_by_email(
      request.env['omniauth.auth']['info']['email'],
      :first_name => request.env['omniauth.auth']['info']['first_name'],
      :last_name => request.env['omniauth.auth']['info']['last_name'],
      :email => request.env['omniauth.auth']['info']['email'],
      :image => request.env['omniauth.auth']['info']['image']
    )
    session[:user_id] = @current_user.id
    redirect_to root_path
  end
end
