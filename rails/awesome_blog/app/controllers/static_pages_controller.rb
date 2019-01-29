class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @microposts = current_user.microposts
      render "users/home_feed"
    end
  end

  def about
  end

  def contact
  end
end
