module Types
  class MutationType < Types::BaseObject
    field :flight, mutation: Mutations::Flight
  end
end
