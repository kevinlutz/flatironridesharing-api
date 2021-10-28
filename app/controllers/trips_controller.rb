class TripsController < ApplicationController
    set :default_content_type, 'application/json'
    
    post '/trips' do
        trip = Trip.create(
            distance: params[:distance], 
            amount: params[:amount], 
            tip: params[:tip], 
            date: params[:date], 
            rider_id: params[:rider_id], 
            driver_id: params[:driver_id], 
        )
        trip.to_json
    end

    post '/trips/:id' do
        trip = Trip.find(params[:id])
        trip = Trip.update(
            distance: params[:distance], 
            amount: params[:amount], 
            tip: params[:tip], 
            date: params[:date], 
            rider_id: params[:rider_id], 
            driver_id: params[:driver_id], 
        )
        trip.to_json
    end

    # Remove a rider
    delete '/trips/:id' do
        trip = Trip.find(params[:id])
        trip.destroy
    end

    # Update a tip
    patch '/trips/:id' do
        trip = Trip.find(params[:id])
        trip.update(amount: params[:amount])
        trip.to_json
    end

    # Grab trip by ID
    get '/trips/:id' do
        trip = Trip.find(params[:id])
        trip.to_json
    end

    # Grab info of all trips(the joiner table)
    get "/trips" do
        trips = Trip.all
        trips.to_json(:include => [:driver, :rider])
    end
end