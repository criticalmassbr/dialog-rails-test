# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST /users' do
    subject(:post_user) do
      post '/users',
           params: params
    end

    let(:params) do
      { user: attributes_for(:user) }
    end

    context 'when request is valid' do
      it 'creates an user' do
        post_user

        expect(User.all.length).to eq(1)
        user = User.last
        expect(user.nome).to eq(params[:user][:nome])
        expect(user.idade).to eq(params[:user][:idade])
        expect(user.sexo).to eq(params[:user][:sexo])
        expect(user.cidade).to eq(params[:user][:cidade])
        expect(user.uf).to eq(params[:user][:uf])
      end
    end

    context 'when request is invalid' do
      let(:params) do
        { user: { nome: 'Gandalf' } }
      end

      it 'do not creates an user' do
        post_user

        expect(User.all.length).to eq(0)
      end
    end
  end

  describe 'GET /users' do
    subject(:get_users) do
      get '/users'
    end

    let!(:users) do
      create_list(:user, 100)
    end

    context 'when request for users' do
      it 'returns users and status code ok' do
        get_users

        expect(response).to have_http_status(:ok)
        expect(User.all.length).to eq(100)
      end
    end
  end

  describe 'GET /users/:id' do
    subject(:get_user) do
      get "/users/#{user_id}"
    end

    let!(:user1) do
      create(:user)
    end
    let!(:user2) do
      create(:user)
    end
    let(:user_id) { user1.id }

    context 'when request for an exists user' do
      it 'returns status code ok' do
        get_user

        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'PATCH /users/:id' do
    subject(:patch_user) do
      patch "/users/#{user_id}",
            params: user_update_params
    end

    let!(:user) do
      create(:user)
    end
    let(:user_id) { user.id }
    let!(:user_update_params) do
      { user: attributes_for(:user) }
    end

    context 'when tries update an user' do
      it 'updates an user' do
        patch_user

        updated_user = User.last
        expect(updated_user.nome).to eq(user_update_params[:user][:nome])
        expect(updated_user.idade).to eq(user_update_params[:user][:idade])
        expect(updated_user.sexo).to eq(user_update_params[:user][:sexo])
        expect(updated_user.cidade).to eq(user_update_params[:user][:cidade])
        expect(updated_user.uf).to eq(user_update_params[:user][:uf])
      end
    end
  end

  describe 'DELETE /users/:id' do
    subject(:delete_user) do
      delete "/users/#{user_id}"
    end

    let!(:user) do
      create(:user)
    end
    let(:user_id) { user.id }

    context 'when tries delete an user' do
      it 'delete an user' do
        delete_user

        expect do
          User.find(user.id)
        end.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
