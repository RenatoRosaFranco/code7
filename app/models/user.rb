# utf-8
class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  # Relatonships
  has_many :clients,      dependent: :destroy
  has_many :members,      dependent: :destroy
  has_many :partners,     dependent: :destroy
  has_many :posts,        dependent: :destroy
  has_many :services,     dependent: :destroy
  has_many :technologies, dependent: :destroy

  mount_uploader :avatat, FileUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
