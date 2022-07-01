class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.order(:id).page params[:page]
  end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
    set_variaveis_form_criacao
    respond_to do |format|
      format.js
    end
  end

  # GET /users/new
  def new
    @user = User.new
    set_variaveis_form_criacao
    respond_to do |format|
      format.js
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_permit)
    respond_to do |format|
      if @user.save
        flash[:notice] = "Usuário criado com sucesso."
        format.html { redirect_to controller: 'users', action: 'index', page: 1 }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    set_user
    respond_to do |format|
      if @user.update(user_params)
        flash[:notice] = "Usuário atualizado com sucesso."
        format.html { redirect_to controller: 'users', action: 'index', page: 1 }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_cidade
    set_variaveis_form_criacao
    sigla = params[:index]
    cidades = @estados.select {|e| e['sigla'] == sigla}.first['cidades']
    render :json => cidades
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Usuário excluído." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nome, :idade, :sexo, :uf, :cidade)
    end

    def user_permit
      params.permit(:nome, :idade, :uf, :cidade)
    end

    def set_variaveis_form_criacao
      require "json"
      file_path = File.join(Rails.root, 'db', 'estados.json')
      json_from_file = File.read(file_path)
      hash = JSON.parse(json_from_file)
      
      # Variáveis
      @estados = hash["estados"]
      @cidades = []

      set_user
      if @user.try(:id)
        # Definindo user com estado já estabelecido
        sigla = @user.uf
        @cidades = @estados.select {|e| e['sigla'] == sigla}.first['cidades']
        @titulo = "Detalhes do(a) #{@user.nome}"
        @url = "/user/edit/#{@user.id}"
      else  
        @titulo = "Criar novo usuário"
        @url = "/user/create"
      end

      @action_url 

    end
end
