module Types
  class FlightAttributes < BaseInputObject
    description "Attributes for creating a flight."

    argument :origin, String, required: true
    argument :destination, String, required: true
    argument :flight_number, String, required: true
    argument :flight_date, GraphQL::Types::ISO8601DateTime, required: true
  end
end