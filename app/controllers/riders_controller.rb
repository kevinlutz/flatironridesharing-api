class RidersController < ApplicationController
    set :default_content_type, 'application/json'

    # Grab rider by ID
    get '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.to_json
    end

    post '/riders' do
        rider = Rider.create(
            first_name: params[:first_name], 
            last_name: params[:last_name], 
            age: params[:age], 
        )
        rider.to_json
    end

    patch '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.update(
            first_name: params[:first_name]
            last_name: params[:last_name]
            age: params[:age]
        )
        rider.to_json
    end

    # Remove a rider
    delete '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.destroy
    end

    # Grab all riders
    get "/riders" do
        rides = Rider.all
        rides.to_json(include: :drivers)
    end
end