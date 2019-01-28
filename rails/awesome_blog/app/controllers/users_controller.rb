class UsersController < ApplicationController
  before_action :require_login, only: [:index, :show]

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
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

  private
    def require_login
      unless logged_in?
        flash[:info] = "Please log in."
        redirect_to login_url
      end
    end
end
