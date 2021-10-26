class Driver < ActiveRecord::Base
    has_many :trips
    has_many :riders, through: :trips


    # **CREATE METHOD** (doesn't persist however)
    def self.create_new_driver(first_name, last_name, years_of_experience, company)
        Driver.create(first_name: first_name, last_name: last_name, years_of_experience: years_of_experience, company: company)
    end

    # **READ CLASS METHOD**
    def self.list_all_drivers
        Driver.all
    end


    # **READ INSTANCE METHODS**
    #Show the full name of a specific driver
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    #Show all the riders that a specific driver drove
    def list_all_riders
        self.trips.map do |trip|
            "#{trip.rider.first_name} #{trip.rider.last_name}"
        end
    end

    #Find a specific driver by their ID
    def self.find_driver_with_id(id)
        Driver.find(id)
    end

    #Find a specifi driver by their years of experience
    def self.years_of_experience(attribute)
        Driver.find_by(attribute)
    end

    #Find all divers with 10+ years of experience
    def self.ten_or_more_years
        Driver.where("years_of_experience > 9")
    end

    #Find all drivers who work for Uber
    def self.drives_for_uber
        Driver.where("company = ?", "Uber")
    end

    #want to search by any company name
    def self.drives_for_lyft
        Driver.where("company = ?", "Lyft")
    end



    # **UPDATE METHOD**   (need help here)
    def update_an_attrbute(attribute)
        self.update(attribute)
    end


    
    # **DELETE METHOD**
    #Delete a specific driver by the ID
    def self.delete_by_id(id)
        driver = Driver.find(id)
        driver.destroy
    end



    def total_money_earned
    end

    def all_riders_who_tip
    end

end