class Rider < ActiveRecord::Base
    has_many :trips
    has_many :drivers, through: :trips

  def self.create_new_rider(name, age)
      Rider.create(name: name, age: age)
  end

  def total_distance_traveled
    trips.pluck(:distance).sum
  end

  def total_spent
    trips.pluck(:amount).sum
  end
  
end