class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = Micropost.new
      @microposts = current_user.microposts.order(created_at: :desc)
      render "users/home_feed"
    end
  end

  def about
  end

  def contact
  end
end
