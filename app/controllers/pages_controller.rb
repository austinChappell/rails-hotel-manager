class PagesController < ApplicationController

  def home
    if logged_in?
      redirect_to rentals_path
    end
  end

end