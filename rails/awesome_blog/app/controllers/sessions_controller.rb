class SessionsController < ApplicationController
  def new
  end

  def create
    # check if email exists in our database
    # check if password is correct
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      # creates a session
      session[:user_id] = user.id
      redirect_to user
    else
      # redirect_to login_url
      redirect_to root_url
    end
  end

  def destroy
    #delete the session created
  end
end
