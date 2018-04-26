class PagesController < ApplicationController

  def home
    if logged_in?
      redirect_to properties_path
    end
  end

end