class Newsletter < ApplicationRecord
  scope :registered, -> { where(status: true) }
  scope :unsregistered, -> { where(status: false) }

  before_create :signup, if: :valid?

  def sendEmail(method)
    begin
      NewsletterMailer.send(method.to_sym, self).deliver_now
    rescue Exception => exception
      raise StandardError, exception
    end
  end

  def signup
    self.status = true
    self.token = SecureRandom.urlsafe_base64
    self.confirmed_at = Date.today
    sendEmail('signup')
  end

  def cancel
    self.status = false
    self.token = nil
    sendEmail('cancel')
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
            length: {minimum: 3, maximum: 245}

  validates :token,
            uniqueness: true
end
