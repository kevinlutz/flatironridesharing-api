class DriversController < ApplicationController
    set :default_content_type, 'application/json'

    # Grab all drivers
    get "/drivers" do
        drivers = Driver.all
        drivers.to_json(include: :riders)
    end

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

    patch '/drivers/:id/edit' do
        driver = Driver.find(params[:id])
        driver.update_attribute(attribute, params[:value])
        driver.to_json
    end

    post '/drivers' do
        Driver.create_new_driver("Sam", "Kevin", 10, "Uber")
    end
    
    # Remove a driver
    delete '/drivers/:id' do
        driver = Driver.find(params[:id])
        driver.destroy
    end

end