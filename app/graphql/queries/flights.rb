module Queries
  class Flights < BaseQuery
    type Types::FlightsResponse, null: true

    description "Returns all flights in the database"

    argument :origin, String, required: false, description: "Origin of the flight"

    def resolve(origin: nil)
      flights = origin ? Flight.where(origin: origin) : Flight.all

      {flights: flights}
    end
  end
end
