module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::User::CreateUserMutation
    field :update_user, mutation: Mutations::User::UpdateUserMutation
    field :destroy_user, mutation: Mutations::User::DestroyUserMutation
  end
end
