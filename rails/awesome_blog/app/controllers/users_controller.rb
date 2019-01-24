class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      params.require(:user).permit(:name, :email)
    )

    if @user.save
      redirect_to root_url
    else
      render "new" #new.html.erb
    end
  end
end
