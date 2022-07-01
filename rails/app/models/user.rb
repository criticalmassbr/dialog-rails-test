class User < ApplicationRecord

    paginates_per 25
    
    def pronome
        return "do" if sexo.downcase == "m"
        return "da" if sexo.downcase == "f"
        return "dx"
    end
end
