module Mutations
    module User
        class UpdateUserMutation < ::Mutations::BaseMutation
            
            graphql_name 'UpdateUser'

            argument :id, ID, required: true
            argument :name, String, required: false
            argument :age, Integer, required: false
            argument :sex, String, required: false
            argument :city, String, required: false
            argument :uf, String, required: false

            type Types::UserType

            def resolve(id:, **args)
                ::User.find(id).update!(args)
            end
        end
    end
end