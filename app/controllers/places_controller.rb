class PlacesController < ApplicationController
  def index
    place_id = Place.find_by_name(params[:name]).id
    @traffic = Traffic.where(place_id: place_id) 
  end
end
