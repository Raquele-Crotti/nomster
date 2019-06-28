class PlacesController < ApplicationController
  
  def index
    @places = Place.order("name").page(params[:page]).per(10)
  end

  def show
    
  end

end
