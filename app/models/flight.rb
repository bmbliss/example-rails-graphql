class Flight < ApplicationRecord
  validates :flight_number, presence: true

  # def some_method
    
  # end

  # def self.yesterdays_flights
  #   return [] if Flight.count == 0

  #   Flight.where('flight_date < ?', Time.now)
  # end

  # def is_future?
  #   self.flight_date > Time.now
  # end
end

