class Rider < ActiveRecord::Base
    has_many :trips
    has_many :drivers, through: :trips

  # def total_distance_traveled
  #   distance = self.trips.map { |trip| trip.distance }
  #   distance.sum
  # end

  def total_spent
    spent = trips.map { |trip| trip.amount }
    spent.sum
  end

def pluck
  self.trips.pluck(:distance).sum
end

  
end