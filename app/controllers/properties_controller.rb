class PropertiesController < ApplicationController

  before_action :set_property, except: [:index, :new, :create]

  def index
    @properties = Property.all
  end
  
  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id
    if @property.save
      flash[:success] = "Property created!"
      redirect_to properties_path
    else
      flash[:failure] = "Unable to create property"
      render :new
    end
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
  
  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:label, :address, :city, :state, :zip_code)
  end

end