module Types
  class FlightsResponse < BaseObject
    field :flights, [Types::FlightType], null: false
  end
end