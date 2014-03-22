class PlacesController < ApplicationController
  def index
    puts "NAME: #{params[:name]}"
    place_id = Place.find_by_name(params[:name]).id
    puts "PLACE ID: #{place_id}"
    @traffic = Traffic.where(place_id: place_id) 
  end
end
