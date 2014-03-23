class PlacesController < ApplicationController
  def index
    place_id = Place.find_by_name(params[:name]).id
    @report = Traffic.traffic_report(place_id) 
  end
end
