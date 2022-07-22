module Mutations
    module User
        class DestroyUserMutation < ::Mutations::BaseMutation
            
            graphql_name 'DestroyUser'

            argument :id, Integer, required: true

            type Types::UserType

            def resolve(id:)
                ::User.find(id).destroy
            end
        end
    end
end