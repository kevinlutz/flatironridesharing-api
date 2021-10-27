class DriversController < ApplicationController
    set :default_content_type, 'application/json'

    
    # Grab driver by ID
    get '/drivers/:id' do
        driver = Driver.find(params[:id])
        driver.to_json
    end
    
    # Grab all drivers under a company
    get '/drivers/:company' do
        driver = Driver.find(params[:company])
        driver.to_json
    end
    
    patch '/drivers/:id' do
        driver = Driver.find(params[:id])
        driver.update_attribute(params[:attribute], params[:value])
        driver.to_json
    end
    
    post '/drivers' do
        driver = Driver.create_new_driver(params[:first_name], params[:last_name], params[:years_of_experience, params[:company])
        driver.to_json
    end
    
    # Remove a driver
    delete '/drivers/:id' do
        driver = Driver.find(params[:id])
        driver.destroy
    end
    
    # Grab all drivers
    get "/drivers" do
        drivers = Driver.all
        drivers.to_json(include: :riders)
    end
end