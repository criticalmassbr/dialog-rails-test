class UsersSecondPageController < ApplicationController

    before_action :init_api_services

    def index
        @current_page = (params[:page] || 1).to_i

        @users = @service.all_users(@current_page)
    end

    private 
    def init_api_services
        @service = Api.new()
    end

end
