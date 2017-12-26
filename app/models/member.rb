# utf-8
class Member < ApplicationRecord
  self.table_name = 'members'
  self.primary_key = 'id'

  mount_uploader :avatar, FileUploader

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 400 }

  validates :role,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 40 }
end
