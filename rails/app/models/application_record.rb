class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  paginates_per 25
end
