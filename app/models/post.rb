# utf-8
class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'id'

  include Filterable

  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }

  belongs_to :user

  validates :title,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 60 }

  validates :content,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 3_000 }

  validates :published,
            presence: false,
            allow_blank: true

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 65 }

  validates :user_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: { only_integer: true }
end
