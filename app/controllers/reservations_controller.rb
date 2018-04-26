class ReservationsController < ApplicationController

  before_action :set_reservation, except: [:index, :new, :create]
  before_action :set_property

  helper_method :property, :reservation

  def index
    @reservations = property.reservations
  end

  def new
    @reservation = property.reservations.new
  end

  def create
    @reservation = current_user.reservations.create!(reservation_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  attr_reader :property, :reservation

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_property
    @property = Property.find(params[:property_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start, :end).merge(property_id: property.id)
  end

end