# utf-8
class Client < ApplicationRecord
  self.table_name = 'clients'
  self.primary_key = 'id'

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minmum: 3, maximum: 400 }

  validates :link,
            presence: true,
            uiqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }
end
