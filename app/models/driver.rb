class Driver < ActiveRecord::Base
    has_many :trips
    has_many :riders, through: :trips

    # **CREATE METHOD** (doesn't persist however)
    def self.create_new_driver(name, years_of_experience, company)
        Driver.create(name: name, years_of_experience: years_of_experience, company: company)
    end

    # **READ CLASS METHOD**
    def self.list_all_drivers
        Driver.all
    end

    # **READ INSTANCE METHODS**
    #Show all the riders that a specific driver drove
    def list_all_riders
        self.trips.map do |trip|
            "#{trip.rider.name}"
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

    def self.drives_for_company(company)
        Driver.where("company = ?", "#{company}")
    end

    # **UPDATE METHOD**   (need help here)
    def update_attribute(attribute, value)
        if(self.has_attribute?("#{attribute}"))
            self.update("#{attribute}": "#{value}")
        else
            false
        end
    end

    # **DELETE METHOD**
    #Delete a specific driver by the ID
    def self.delete_by_id(id)
        driver = Driver.find(id)
        driver.destroy
    end

    def total_money_earned
        riders.pluck(:amount).sum
    end

    def all_riders_who_tip
        riders.where("trips.tip == 1").distinct.map {|rider| "#{rider.name}"}
    end

end