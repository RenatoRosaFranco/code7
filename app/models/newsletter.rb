# utf-8
class Newsletter < ApplicationRecord
  scope :registered, -> { where(status: true) }
  scope :unsregistered, -> { where(status: false) }

  before_create :signup, if: :valid?

  def send_email(method)
    NewsletterMailer.send(method.to_sym, self).deliver_now
  end

  def signup
    self.status = true
    self.token = SecureRandom.urlsafe_base64
    self.confirmed_at = Date.today
    send_email('signup')
  end

  def cancel
    self.status = false
    self.token = nil
    send_email('cancel')
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
