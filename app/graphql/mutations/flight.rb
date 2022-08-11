module Mutations
  class Flight < BaseMutation
    description "Creates a new flight"

    argument :flight, Types::FlightAttributes, required: true, description: "A new flight object"

    field :flight, Types::FlightType, null: false

    def resolve(flight:)
      # puts flight.to_h
      flight = ::Flight.create(flight.to_h)

      {flight: flight}
    end
  end
end