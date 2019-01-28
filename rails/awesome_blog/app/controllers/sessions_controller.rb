class SessionsController < ApplicationController
  def new
  end

  def create
    # check if email exists in our database
    # check if password is correct
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Successfully logged in!"
      redirect_to user #user_url(user.id)
    else
      flash[:danger] = "Invalid credentials. Please try again."
      redirect_to login_url
    end
  end

  def destroy
    log_out
    flash[:info] = "You are logged out."
    redirect_to root_url
  end
end
