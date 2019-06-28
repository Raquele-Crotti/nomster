class PlacesController < ApplicationController
  
  def index
    @places = Place.order("name").page(params[:page])
  end

  def new
    
  end

end
