class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end
  
  def new
    @rental = Rental.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end