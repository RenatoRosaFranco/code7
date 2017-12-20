class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'id'

  scope :published,-> { where(published: true) }
  socpe :unpublished, -> { where(published: false) }

  belongs_to :user

  validates :title,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 30}

  validares :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum:3, maximum: 60}

  validates :content,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 3000}

  validates :published,
            presence: false,
            allow_blank: true

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 3, maximum: 65}

 validates  :user_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: {only_integer: true}

end
