class Rider < ActiveRecord::Base
    has_many :trips
    has_many :drivers, through: :trips

  def total_distance_traveled
  end

  def total_spent
  end

  
end