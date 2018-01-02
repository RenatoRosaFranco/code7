# utf-8
class Newsletter < ApplicationRecord

  scope :registered, -> { where(status: true) }
  scope :unsregistered, -> { where(status: false) }

  before_create :signup, if: :valid?

  def signup
    self.status = true
    self.token = SecureRandom.urlsafe_base64
    self.confirmed_at = Date.today
    Mailer.new(NewsletterMailer, :signup, :deliver_now)
  end

  def cancel
    self.status = false
    self.token = nil
    Mailer.new(NewsletterMailer, :cancel, :deliver_now)
  end

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :email,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }

  validates :token,
            uniqueness: true
end
