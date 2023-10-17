class UsersController < ApplicationController
  before_action :new_user, only: [:new, :index]
  before_action :find_user, only: [:edit, :update, :destroy]

  def new;end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'Usuário Criado com Sucesso'
    else
      flash[:alert] = @user.errors.full_messages.join(', ')
    end

    redirect_to users_path
  end

  def index
    @users = Kaminari.paginate_array(User.all.order(:nome)).page(params[:page]).per(10)
  end

  def edit;end

  def update
    @user.attributes = user_params

    if @user.save
      flash[:notice] = 'O usuário teve suas informações alteradas com sucesso!'
    else
      flash[:alert] = @user.errors.full_messages.join(', ')
    end

    redirect_back fallback_location: root_path
  end

  def destroy
    nome = @user.nome
    @user.destroy!

    redirect_to users_path, alert: "O usuário de nome #{nome} foi excluído."
  end

  private

  def user_params
    params.require(:user).permit(
      :nome, :idade,
      :sexo, :cidade, :uf,
    )
  end

  def new_user
    @user = User.new
  end

  def find_user
    @user = User.find(params[:id])
  end
end
