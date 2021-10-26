class TripsController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Grab all trips
    get "/trips" do
        trips = Trip.all.limit(20)
        trips.to_json
    end

    # Grab trip by ID
    get '/trips/:id' do
        trip = Trip.find(params[:id])
        trip.to_json
    end
end