class RidersController < ApplicationController
    set :default_content_type, 'application/json'

    # Grab all riders
    get "/riders" do
        rides = Rider.all
        rides.to_json(include: :drivers)
    end

    # Grab rider by ID
    get '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.to_json
    end

    post '/riders' do
        Rider.create_new_rider("Bob", "Billy", 18)
    end

    # Remove a rider
    delete '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.destroy
    end
end