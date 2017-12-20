class Service < ApplicationRecord
  self.table_name = 'services'
  self.primary_key = 'id'

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: true,
            length: {minimum: 3, maximum: 30}

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 300}
end
