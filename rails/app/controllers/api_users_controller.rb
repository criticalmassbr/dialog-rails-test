class ApiUsersController < ApplicationController
  # GET /api_users
  def index
    params[:page] ||= 1
    uri = URI("http://localhost:3001/api/users?page=#{params[:page].to_i - 1}")
    res = Net::HTTP.get_response(uri)

    @items = 0
    @total_pages = 0
    @current_page = 0
    if res.is_a?(Net::HTTPSuccess)
      res = JSON.parse(res.body)
      @users = res['users'].map { |json_user| User.new(json_user) }
      @items = res['items']
      @total_pages = res['totalPages']
      @current_page = res['currentPage']
    end

    @previous_page = @current_page.positive? ? @current_page : false
    @next_page = @current_page < @total_pages - 1 ? @current_page + 2 : false
  end
end
