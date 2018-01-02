# utf-8
class Contact
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :phone, :email, :message

  # Initialize
  # @implemented
  def initialize(params: {})
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @message = params[:message]
  end

  # data should be persisted?
  # @implemented
  def persisted?
    false
  end

  def send_email
    Mailer.new(ContactMailer, :sended,   :deliver_now)
    Mailer.new(ContactMailer, :received, :deliver_now)
  end

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :phone,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 15 }

  validates :email,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }

  validates :message,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 800 }
end
