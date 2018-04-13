class Trail < ApplicationRecord
  has_many :trip_trails
  has_many :trips, through: :trip_trails

  def total_number_of_hikes
    trips.count
  end
end
