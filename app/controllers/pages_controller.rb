class PagesController < ApplicationController
  def home
    if user_signed_in?
      render 'home_logout'
  else 
      render 'home'
  end
  end
  def about
  end
end