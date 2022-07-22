module Mutations
    module User
        class CreateUserMutation < ::Mutations::BaseMutation
        
            graphql_name 'CreateUser'
    
            argument :name, String, required: true
            argument :age, Integer, required: true
            argument :sex, String, required: true
            argument :city, String, required: true
            argument :uf, String, required: true
    
            type Types::UserType
    
            def resolve(name: nil, age: nil, sex: nil, city: nil, uf: nil)
                ::User.create!(
                    name: name,
                    age: age,
                    sex: sex,
                    city: city,
                    uf: uf,
                )
            end
        end
    end
end