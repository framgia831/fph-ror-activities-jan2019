class PagesController < ApplicationController
  def home
  end

  def about
    @message = "This is the about page"
  end
end
