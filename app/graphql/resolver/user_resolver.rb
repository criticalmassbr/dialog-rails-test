module Resolvers
    class UserResolver < GraphQL::Schema::Resolver
        
        type Types::UserType, null: false

        argument :id, Integer, null: false

        def resolve(id:)
            ::User.find(id)
        end
    end
end