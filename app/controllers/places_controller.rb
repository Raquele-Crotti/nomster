class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @places = Place.order("name").page(params[:page]).per(10)
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update       #when user presses button on edit form
    @place = Place.find(params[:id])
    @place.update_attributes(place_params)  #update changes and save to database
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
