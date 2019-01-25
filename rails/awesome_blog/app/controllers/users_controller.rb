class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      params.require(:user).permit(:name, :email, :password)
    )

    if @user.save
      redirect_to user_url(@user.id) #/users/:id
    else
      render "new" #new.html.erb
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
