class UserSessionsController < ApplicationController

  before_filter :login_required , :only => [ :destroy ]

  respond_to :html

  # omniauth callback method
  # After the user is
  def create

    omniauth = env['omniauth.auth']

    @user = User.find_by_uid(omniauth['uid'])

    if @user.nil?
        failure
    end
    # Currently storing all the info return by Authentication module
    session[:user_id] = omniauth

    flash[:notice] = "Successfully logged in"
    redirect_to root_path

  end

  # Omniauth failure callback
  def failure
    flash[:notice] = params[:message]

  end

  # logout - Clear our rack session BUT essentially redirect to the provider
  # to clean up the Devise session from there too !
  def destroy
    session[:user_id] = nil

    flash[:notice] = 'You have successfully signed out!'
    redirect_to "#{PROVIDER_URL}/users/sign_out"
  end
end