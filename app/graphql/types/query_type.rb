module Types
  class QueryType < Types::BaseObject
    field :all_users, [UserType], null: false
    # field :user, resolver: Resolvers::UserResolver

    def all_users
      ::User.all
    end
  end
end
