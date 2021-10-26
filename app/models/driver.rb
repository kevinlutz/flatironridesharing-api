class Driver < ActiveRecord::Base
    has_many :trips
    has_many :riders, through: :trips

    def most_years_of_experience
    end

    def total_money_earned
    end

    def all_riders_who_tip
    end

    def youngest_driver
    end

    def oldest_driver
    end

    def average_driver_age
    end
end