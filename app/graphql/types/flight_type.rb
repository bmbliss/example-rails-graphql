module Types
  class FlightType < BaseObject
    field :origin, String, null: false
    field :destination, String, null: false
    field :flight_number, String, null: false
    field :flight_date, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
