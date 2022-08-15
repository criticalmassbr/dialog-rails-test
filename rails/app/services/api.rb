class Api
    include HTTParty
    
    base_uri 'localhost:8000'

    def all_users(current_page)
        options = { query: { page: current_page } }

        self.class.get("/api/users", options)
    end
end